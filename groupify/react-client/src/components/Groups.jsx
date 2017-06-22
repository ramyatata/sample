import React from 'react';

const Groups = () => (
  <div className="panel">
    <h2> Groups </h2>
    <button>Get Groups</button>
    <div className="group-list">
      <div className="group">
        <h3>fiery-flowers</h3>
        <p>Mario</p>
        <p>Waluigi</p>
        <p>Yoshi</p>
        <p>Daisy</p>
      </div>
      <div className="group">
        <h3>regal-fungus</h3>
        <p>Peach</p>
        <p>Wario</p>
        <p>Koopa Troopa</p>
        <p>Rosalina</p>
      </div>
      <div className="group">
        <h3>cylindrical-transit</h3>
        <p>Bowser</p>
        <p>Toad</p>
        <p>King Boo</p>
        <p>Luigi</p>
      </div>
    </div>
  </div>
);

export default Groups;
