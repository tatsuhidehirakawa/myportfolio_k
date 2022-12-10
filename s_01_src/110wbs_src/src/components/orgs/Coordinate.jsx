import React from "react"
import { Mapper } from "../atms/Mapper";
import Saver from  '../mlcs/Saver.jsx';
import MapController from  '../atms/MapController.jsx';

const Coordinate = () => {
  return (
    <div className="relative w-full z-3 absolute">
      <Saver />
      <MapController />
      <Mapper />
      {/* <Saver className="z-6" /> */}
      {/* <Savee className="z-5" /> */}
      {/* <Mapper className="z-2" /> */}
    </div>
  )
}

export default Coordinate;