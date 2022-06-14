import { Route, Routes, Link, Outlet } from 'react-router-dom';
import ALLCrud from './ALLCrud/cindex';
import './App.css';
import Authors from './Authors/aindex';
import AuthorShow from './Authors/AutherShow';
import AuthorList from './Authors/AuthorList';
import Books from './Books/bindex';

const MainContanier = () => {
  return (
    <div>
      <div className="navbar">
        <Link to="/">Home</Link>
        <Link to="/allCRUD">allCRUD</Link>
        <Link to="/authors">authors</Link>
      </div>
      <div>
        <Outlet />
      </div>
    </div>
  );
};

const Home = ()=>{
  return (
    <p>Home</p>
  )
}

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<MainContanier />}>
          <Route index element={<Home />} />
          <Route path="/allCrud" element={<ALLCrud />} />
          <Route path="/authors" element={<Authors />}>
            <Route index element={<AuthorList />} />
            <Route path="/authors/new" element={<AuthorForm />} />
            <Route path="/authors/:id/edit" element={<AuthorForm />} />
            <Route path="/authors/:id" element={<AuthorShow />} />
          </Route>
        </Route>
      </Routes>
    </div>
  );
}

export default App;