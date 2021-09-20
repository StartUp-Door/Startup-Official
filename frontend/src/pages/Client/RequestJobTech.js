import Navbar from "../../components/Client/navbar/Navbar";
import Sidebar from "../../components/Client/sidebar/Sidebar";
import RequesJobTech from '../../components/Client/request/Techform';
import Rightbar from "../../components/Client/rightbar/Rightbar";
import "./clientDash.css"

export default function ClientDash() {
  return (
    <div>
      <Navbar />
      <div className="homeContainer">
        <Sidebar />
        <RequesJobTech />
        <Rightbar/>
      </div>
    </div>
  );
}