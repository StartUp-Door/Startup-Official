import "./share.css";
import {
  PermMedia,
  Label,
  Room,
  EmojiEmotions,
  Cancel,
} from "@material-ui/icons";
import { useEffect, useRef, useState } from "react";
import axios from "axios";

import { Button, Form, FloatingLabel } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css'; 

export default function Share() {

  const [user, setClient] = useState(null);
  useEffect(() => {
    fetch('http://localhost:4000/client/1')
      .then(res => {
        return res.json();
      })
      .then(data => {
        // console.log(data[0])
        setClient(data[0]);
      })
  }, [])

  const [file, setFile] = useState(null);

    const description = useRef();
    const category = useRef();
    const location = useRef();
    // const price = useRef();
    // const image = useRef();

  const clientPost = async (e) => {
    e.preventDefault();

    const post = {
      description: description.current.value,
      category: category.current.value,
      location: location.current.value,
    //   price: price.current.value,
      // image: image.current.value,
    }

    if (file) {
      const data = new FormData();
      const fileName = Date.now() + file.name;
      data.append("name", fileName);
      data.append("file", file);
      post.image = fileName;
      console.log(post);
      try {
        await axios.post("/client/upload", data);
      }
      catch (err) {}
    }

    try{
      await axios.post("/client/1", post); 
    }
    catch(err) { 
      console.log(err); 
    }   

    window.location.reload();

  }
  return (
    <div className="share">
      <div className="shareWrapper">
        <Form onSubmit={clientPost}>
        <div className="shareTop">
          <img
            className="shareProfileImg"
            src={user && user.cimage ? ("http://localhost:4000/images/" + user.cimage) : "http://localhost:4000/images/noprofile.png"}
            alt=""
          />

          <input
            required
            placeholder={"What do you want ?"}
            className="shareInput"
            ref={description}
          />
        </div>
        <hr className="shareHr" />
        {file && (
          <div className="shareImgContainer">
            <img className="shareImg" src={URL.createObjectURL(file)} alt="" />
            <Cancel className="shareCancelImg" onClick={() => setFile(null)} />
          </div>
        )}
        <div className="shareBottom" >
          <div className="shareOptions">
            <label htmlFor="file" className="shareOption">
              <PermMedia htmlColor="tomato" className="shareIcon" /><div className="shareOptionText">Image</div>
              {/* <span ref={image} className="shareOptionText">Photo</span> */}
              <input
                // required
                style={{ display: "none" }}
                type="file"
                id="file"
                accept=".png,.jpeg,.jpg"
                // ref={image}
                onChange={(e) => setFile(e.target.files[0])}
              />
            </label>
            <div className="shareOption">
              <Label htmlColor="blue" className="shareIcon" />
              <span className="shareOptionText">
                <Form.Select className="me-sm-2" id="inlineFormCustomSelect" ref={category}>
                        <option value="Technician">Technician</option>
                        <option value="Food & Cuisine">Food & Cuisine</option>
                        <option value="Plants & Crops">Plants & Crops</option>
                        {/* <option value="3">Three</option> */}
                </Form.Select>
              </span>
            </div>
            <div className="shareOption">
            
              <Room htmlColor="green" className="shareIcon" />
              <span ref={location} className="shareOptionText">Location</span>
              
            </div>
          </div>
          <Button className="shareButton" type="submit">
            Request Job
          </Button>
        </div>
        {/* form */}
        </Form>
      </div>
    </div>
  );
}