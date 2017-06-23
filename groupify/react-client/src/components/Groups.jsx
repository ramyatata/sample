import React from 'react';
// import GroupList from './GroupList.jsx';

const Groups = (props) => {
  // console.log(props.data);
  const groups = props.data;
  // const listGroups = groups.map((group) => {
  //   // console.log(group.name);
  //   <h3>{group.name}</h3>
  // })
  console.log(groups);
  return (
    <div className="panel">
    <h2> Groups </h2>
    <button>Get Groups</button>
    <div className="group-list">
      <div className="group">
        {groups.map((group) => {
        <div>
          <h3>{group.name}</h3>
          <p>{group.members[0]}</p>
          <p>{group.members[1]}</p>
          <p>{group.members[2]}</p>
          <p>{group.members[3]}</p>
        </div>
        })}
      </div>
    </div>
  </div>
)};

export default Groups;


// {group.members.map((member) => {
 //           <p>{member}</p>
 //         })}


    // <div className="group">
      //   <h3>fiery-flowers</h3>
      //   <p>Mario</p>
      //   <p>Waluigi</p>
      //   <p>Yoshi</p>
      //   <p>Daisy</p>
      // </div>
      // <div className="group">
      //   <h3>regal-fungus</h3>
      //   <p>Peach</p>
      //   <p>Wario</p>
      //   <p>Koopa Troopa</p>
      //   <p>Rosalina</p>
      // </div>
      // <div className="group">
      //   <h3>cylindrical-transit</h3>
      //   <p>Bowser</p>
      //   <p>Toad</p>
      //   <p>King Boo</p>
      //   <p>Luigi</p>
      // </div>