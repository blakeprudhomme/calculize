# Calculize
A recursive calculator that operates `+ - * /` on any number of integer arguments represented as a string.

```
"10*10/5+34-5+25/5".calculize => 54
```

---

Ruby Version: 3.0.0  
Rails Version: 6.1.1

### Running locally
```
git clone git@github.com:blakeprudhomme/calculize.git
cd calculize
bundle
rails db:setup
rails server
```

### Running tests
```
rails test
```
