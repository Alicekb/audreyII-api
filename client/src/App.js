import React, { Component } from 'react';
import { Switch, Route } from 'react-router-dom';

import Week from './components/week_planner/Week';
import DayPlanner from './components/meal_planner/DayPlanner'
import VerticalMenu from './components/nav/VerticalMenu';

class App extends Component {
  render() {
    return (
      <div>
        <VerticalMenu />
        <Switch>
          <Route path='/week' component={Week} />
          <Route path='/planner' component={DayPlanner} />
        </Switch>
      </div>
    );
  }
}

export default App;

