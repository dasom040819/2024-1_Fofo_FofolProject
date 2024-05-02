// Login 화면

import React, { useState } from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter } from 'react-router-dom';

const LoginPage = () => {
  const [userid, setUserid] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');

  const handleLogin = () => {
    // 로그인 처리 로직
    if (userid === 'admin' && password === 'password') {
      // 로그인 성공 처리
      setError('');
      alert('로그인 성공');
    } else {
      // 로그인 실패 처리
      setError('유효하지 않은 사용자 이름 또는 비밀번호입니다.');
    }
  };

  return (
    <div>
      <h2>로그인</h2>
      <div>
        <label htmlFor='userid'>아이디:</label>
        <input
          type='text'
          id='userid'
          value={userid}
          onChange={(e) => setUserid(e.target.value)}
        />
      </div>
      <div>
        <label htmlFor='password'>비밀번호:</label>
        <input
          type='password'
          id='password'
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
      </div>
      <button onClick={handleLogin}>로그인</button>
      {error && <div style={{ color: 'red' }}>{error}</div>}
    </div>
  );
};

export default LoginPage;
