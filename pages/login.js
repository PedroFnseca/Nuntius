import Styles from '../styles/Login.module.css'
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';

export default function Index() {

  function handleLogin(e) {
    e.preventDefault();
    alert('login');
  }

  function handleKeyPress(e) {
    if (e.key === 'Enter') {
      handleLogin(e);
    }
  }

  return (
    <div className={Styles.container}>
      <div className={Styles.login}>
        <div className={Styles.logo_container}>
          <img id={Styles.logo} />
        </div>
        <div className={Styles.form_container}>
          <Form onSubmit={handleLogin}>
            <div className={Styles.input_container}>
              <Form.Group controlId="formBasicEmail">
                <Form.Control 
                  type="email" 
                  placeholder="Usuário ou Email" 
                  autoComplete="off" 
                  className={Styles.input} 
                  onKeyPress={handleKeyPress}
                  />
              </Form.Group>
              <Form.Group controlId="formBasicPassword">
                <Form.Control 
                  type="password" 
                  placeholder="Senha" 
                  autoComplete="off" 
                  className={Styles.input}
                  onKeyPress={handleKeyPress}
                  />
              </Form.Group>
            </div>
            <div className={Styles.button_container}>
              <Button className={Styles.button} variant="outline" onClick={handleLogin}>
                Registrar
              </Button>
              <Button className={Styles.button} variant="outline" onClick={handleLogin}>
                Entrar
              </Button>
            </div>
            <Form.Text className={Styles.link}>
                Esqueceu a senha?
            </Form.Text>
          </Form>
        </div>
      </div>
    </div>
  )
}
