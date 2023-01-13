import { BrowserRouter, Route, Switch, Link } from 'react-router-dom';

import Top from './components/Top';
import BikesIndex from './components/bikes/Index';

const App = () => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path='/' component={Top} />
        <Route path='/bikes' component={BikesIndex} />
      </Switch>
      <div><Link to='/bikes'>Move To Bike Index</Link></div>
      <div><Link to='/'>Back To Top</Link></div>
    </BrowserRouter>
  );
}

export default App;
