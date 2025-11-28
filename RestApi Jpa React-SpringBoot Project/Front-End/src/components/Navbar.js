import React from 'react';
import { Link, Outlet } from 'react-router';

const Navbar = () => {
  return (
    <>
      <nav className="navbar">
        <div className="nav-container">
          <Link to="/" className="nav-logo">🎬 MovieTicket</Link>
          <div className="nav-menu">
            <Link to="/" className="nav-link">Movies</Link>
          </div>
        </div>
      </nav>
      <div className="container">
        <Outlet />
      </div>
    </>
  );
};

export default Navbar;
