import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
import data from './dummy_data.js';

import Groups from './components/Groups.jsx';
import Preferences from './components/Preferences.jsx';
import GroupList from './components/GroupList.jsx';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      view: 'group',
      
    };
  }



  changeView(option) {
    this.setState({
      view: option
    });
  }

  render() {
    return (
      <div>
        <div className="nav">
          <span className="logo">groupify!</span>
          <span className={this.state.view === 'group'
            ? 'nav-selected'
            : 'nav-unselected'}
            onClick={() => this.changeView.bind(this)('group')}>
            Groups
          </span>
          <span className={this.state.view === 'pref'
            ? 'nav-selected'
            : 'nav-unselected'}
            onClick={() => this.changeView.bind(this)('pref')}>
            Preferences
          </span>

        </div>
        <div className="main">
          {this.state.view === 'group'
            ? <Groups data={data.groups} view={this.state.view}/>
            : <Preferences/>}
        </div>
      </div>
    );
  }
}

ReactDOM.render(
  <App/>, document.getElementById('groupify'));
