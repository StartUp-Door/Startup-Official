import "./post.css";
import ViewAgendaIcon from '@material-ui/icons/ViewAgenda';
import { MoreVert } from "@material-ui/icons";
import React, { useState, useEffect } from "react";
import axios from 'axios'
import { format } from "timeago.js";

import { Link } from "react-router-dom";

export default function Mappost( {tech} ) {

  // const [client, setClient] = useState(null);
  // useEffect(() => {
  //   fetch('http://localhost:4000/client/getClient/')
  //     .then(res => {
  //       return res.json();
  //     })
  //     .then(data => {
  //       // console.log(data)
  //       setClient(data);
  //     })
  // }, [])
  // console.log(client);
  

  return (
    <div>      

      {tech.map((user) => (
        <div key={user.tid}>
          <div className="post">
            <div className="postWrapper">                
                <div className="postTop">
                    <div className="postTopLeft">
                        <img
                            className="postProfileImg"
                            src={user.cimage ? ("http://localhost:4000/images/" + user.cimage) : "http://localhost:4000/images/noprofile.png"}
                            alt=""
                        />
                        <span className="postUsername">{user.cname}</span>
                        <span className="postDate"> .{format(user.ttime)}</span>
                    </div>
                    <div className="postTopRight">
                        <MoreVert />
                    </div>
                </div>
                <div className="postCenter">
                    <div className="postcenterText">
                        <span className="postText"><b>Category: {user.tcat}</b><br/>Description: {user.tdesc}<br/>Email : {user.cemail} <br/>
                        Address : {user.caddress} <br/>Contact No : {user.cno}<br/>Location : {user.tloca} <br/>
                        Available Day : {user.tavail}<br/></span>
                    </div>
                        {/* <img className="postImg" src="../../../assets/post/elec.jpeg" alt="" /> */}
                </div>
                <div className="postBottom">
                    <div className="postBottomLeft">
                    </div>
                    <div className="postBottomRight">                        
                        <Link to={`/requestJob/tech/${user.tid}`} style={{textDecoration:"none", color:"black"}}><ViewAgendaIcon /><span className="postCommentText">Request Job</span></Link>
                    </div>
                </div>
            </div>
        </div>
        </div>          
      ))}       

    </div>

  );
  
}