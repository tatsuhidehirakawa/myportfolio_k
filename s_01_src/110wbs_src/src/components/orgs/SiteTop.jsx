/** @jsxImportSource @emotion/react */
import { css } from "@emotion/react";
// import React from "react"
import Card from "../mlcs/Card";
// import Pic from "../atms/Pic";
import React, { useState, useEffect } from 'react';
// import useFetch from '../../hooks/useFetch';
// import { Mapper } from "../atms/Mapper";

const SiteTop = () => {

  // // カスタムフック（useFetch.js）を利用した記述
  // const url = "http://docker.for.mac.localhost:8080/accountAttribute/someGet";
  // const { data, loading, error } = useFetch(url, {});

  //   if (isLoading) {
  //     return <h4>Loading...</h4>;
  //   }
  //   if (error) {
  //     alert(error);
  //     return <h4>Error Occured</h4>;
  //   }

  const inlineB_text = css`
    font-size: 21px;
    color: rgb(255, 255, 255);
    filter: drop-shadow(3px 3px 9px rgba(0,0,0,0.6));
    font-weight: bolder;
    text-align: left;
    padding: 12px 0px 8px 33px;
    width: 100vh;
    z-index: 3;
  `;

  const sitetop_outline = css`
    display: flex;
    flex-direction: column;
    width: 100%;
    position: absolute;
    padding: 0px 0px 237px 0px;
  `;

  const sitetop_inline = css`
    background: rgba(115, 255, 277, 0.3);
    display: flex;
    flex-direction: column;
  `;

  const inlineA_text = css`
    filter: drop-shadow(3px 3px 9px rgba(0,0,0,0.6));
    width: 100%;
    height: 245px;
    margin: 17px 10px 38px 50px;
    text-align: left;
    font-size: 50px;
    color: white;
  `;

  const tile_sitetop = css`
    display: flex;
    filter: drop-shadow(3px 3px 9px rgba(0,0,0,0.6));
    margin: 0px 0px 0px 0px;
    padding: 10px 0px 0px 0px;
    overflow-y: scroll;        // Disable scroll bar.
    -ms-overflow-style: none;  // Disable scroll bar.
    scrollbar-width: none;     // Disable scroll bar.
  `;

// 従来のApiFetchを利用した記述
  // const [data, setData] = useState({ hits: [] });
  const [posts, setPosts] = useState([])
  useEffect(() => {
    // console.log('ApiFetch.jsx: useEffect()')   // Debug.
    // fetch('https://jsonplaceholder.typicode.com/posts', {method: 'GET'})
    // fetch('http://localhost:8080/somePost', {method: 'GET'})
    // fetch('http://host.docker.internal:8080/somePost', {method: 'GET'})
    // fetch('http://host.docker.internal:8080/someGet', {method: 'GET'})   // Docker for Mac 18.03 and Windows10
    // fetch('http://docker.for.mac.host.internal:8080/someGet', {method: 'GET'})   // Docker for Mac 17.12
    fetch('http://docker.for.mac.localhost:8080/accountAttribute/someGet', {method: 'GET'})   // Docker for Mac 17.06
    .then(res => res.json())
    .then(data => {
      setPosts(data)
      // console.log(data)
      })
      // .catch(err => {   // Debug.
      //     console.log('ApiFetch.jsx: useEffect(): err: ', err)
      // });
  },[])
 
  return (
    <div className="sitetop--outline" css={sitetop_outline}>
      {/* <FetchComponent /> */}
      {/* <Mapper style={{ backgroundColor: "rgba(0,0,0,0.74)" }} /> */}
      {/* <FloatingActionPanel /> */}
        <div className="sitetop--inline" css={sitetop_inline}>
          <div className="sitetop--inlineA--text" css={inlineA_text}>
            <p style={{fontSize: `90px`}}>＞サイト名</p><p>＞副題</p>
          </div>
          <div className="sitetop--inlineB--text" css={inlineB_text}>
            <p>人気急上昇のメンバー</p>
          </div>
          <div className="sitetop--inlineC--tiling contents_box" css={tile_sitetop}>

          {posts.map((post) => {
            return (
                <Card
                  link={"../Coordinate"}
                  image={post.rate.String}
                  // introduction={productItem.introduction}
                  name={post.self_introduction.String}
                  location={post.facebook_uri.String}
                  distance={post.twitter_uri.String}
                  introduction={post.skill.String}
                />
                
            );
          })}

          {/* {posts.map((data) => {
            return (
                <Card
                  link={"../Coordinate"}
                  image={data.rate.String}
                  // introduction={productItem.introduction}
                  name={data.self_introduction.String}
                  location={data.facebook_uri.String}
                  distance={data.twitter_uri.String}
                  introduction={data.skill.String}
                />
                
            );
          })} */}

          </div>
        </div>
    </div>
  );
}

export default SiteTop;
