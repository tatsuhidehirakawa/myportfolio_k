// import React from "react"
import Card from "../mlcs/Card";
import "./SiteTop.scss"
import ApiFetch from "../../hooks/ApiFetch";
import React, { useState, useEffect } from 'react';

const SiteTop = () => {
  const [data, setData] = useState({ hits: [] });
  const [posts, setPosts] = useState([])
  useEffect(() => {
    // console.log('ApiFetch.jsx: useEffect()')   // Debug.
    // fetch('https://jsonplaceholder.typicode.com/posts', {method: 'GET'})
    // fetch('http://localhost:8080/somePost', {method: 'GET'})
    // fetch('http://host.docker.internal:8080/somePost', {method: 'GET'})
    // fetch('http://host.docker.internal:8080/someGet', {method: 'GET'})   // Docker for Mac 18.03 and Windows10
    // fetch('http://docker.for.mac.host.internal:8080/someGet', {method: 'GET'})   // Docker for Mac 17.12
    fetch('http://docker.for.mac.localhost:8080/someGet', {method: 'GET'})   // Docker for Mac 17.06
    .then(res => res.json())
    .then(data => {
      setPosts(data)
      console.log(data)
      })
      // .catch(err => {   // Debug.
      //     console.log('ApiFetch.jsx: useEffect(): err: ', err)
      // });
  },[])

  const customerList = [
    {
      name: <ApiFetch>data.account_id</ApiFetch>,
      image: <ApiFetch>data.pic_id</ApiFetch>,
      introduction: data.skill
    },
  ];
 
  return (
    <div className="main-wrapper">
      <div className="main">
        <div className="sitetop--inline">
          {posts.map((post) => {
            return (
              <Card
                name={post.skill}
                // image={productItem.image}
                // introduction={productItem.introduction}
              />
            );
          })}
        </div>
      </div>
    </div>
  );
}

export default SiteTop;