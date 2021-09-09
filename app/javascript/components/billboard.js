import React from 'react';

const billboard = ({ billboard }) => {
  const { name } = billboard
  return (
    <>
      <h1>{name}</h1>
      <br />
      <a href="/">Back</a>
    </>
  )
}

export default billboard;