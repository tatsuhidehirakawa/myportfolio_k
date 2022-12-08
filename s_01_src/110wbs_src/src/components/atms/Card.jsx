import React from "react";
import { Link } from "react-router-dom";

class Card extends React.Component {
  render() {

    return (
      <div className="inline-block w-64 h-72 shadow-lg p-[10px 10px 20px 10px] text-center rounded-2xl text-base leading-normal m-2">
        <div className="rounded">
          <Link to="/Offer">
            <img src={this.props.image} alt={this.props.introduction} className="w-full h-60 rounded-2xl cursor-pointer p-[15px 5px 0px 15px]" />
          </Link>
        </div>
        <p>{this.props.name}</p>
        <p><b>{this.props.location}</b>、日本、{this.props.distance}km</p>
      </div>
    );
  }
}

export default Card;
