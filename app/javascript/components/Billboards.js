import React from 'react';

const Billboards = ({ billboards }) => {
  return (
    <h1> Billboard </h1>
    
    {
      Billboards.map( (billboard) => (
        <div>
          <h2>{billboard.name}</h2>
          <a href={`/billboards/${billboard.id}`}>Show</a>
          {''}
          <a href={`/billboards/${billboard.id}/edit`}>Edit</a>
          {''}
          <a href={`/billboards/${billboard.id}`} data-method="Delete"
          
          >
          Delete
      </a>
    </div>
  ))
}
</>
)
}


export default Billboards;




 // Components - building blocks, pages, front end actions
// class People extends component {

// }

//const People = () => {
  //return (

    
  //)
//} 
//import Cart from './Cart.js'
//const People = () => (

  //<Cart />
//)

//export default People
 
// props - properties passed into the component, info and data into the component
// from controller to component is key value pairs
//const People = (props) => {
  //return (
    //props.name 
    //props.desc
    
  //)
//}

//const People = ({ name, desc }) => {
  //return (
  //  name 
    //desc
    
  //)
//}
// jsx - html and js
// {
//   js here
// }
//{/* <h1 className="" onClick></h1> */}