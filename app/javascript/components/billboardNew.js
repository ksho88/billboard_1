import React from 'react'

const billboardNew = ({ billboard }) => {
  
  const { name } = billboard 
  const defaultName = name ? name : ""
  return (
    <>
    <h1> Form Page New </h1>
    <form action='/billboards' method="post">
      <input
      type="text"
      defaultValue {defaultName}
      name="billbaord[name]"
      
      required 
      placeholder="Name"
      />
      <button type='submit'>Add Billbaord</button>
    </form>  
    </>
}
export default billboardNew

