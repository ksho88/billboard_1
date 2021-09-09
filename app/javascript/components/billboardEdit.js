import React from 'react'

const billboardEdit = ({ billboard }) => {
  const { name, id } = billboard
  const defaultName = name ? name : ""
  
  return (
    <>
    <h1> Form Page Edit </h1>
    <form action={`/billboard/${id}`} method="post">
      <input type="hidden" name="_method" value="patch" />
      <input
      type="text"
      defaultValue={defaultName}
      name="sub[name]"
      />

    </form>
    
    </> 
  ) 
}
export default billboardEdit



