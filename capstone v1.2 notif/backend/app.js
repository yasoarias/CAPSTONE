const express = require('express');
const cors = require('cors');
const authRoutes = require('./routes/auth');

const app = express();

// Enable CORS for frontend requests
app.use(cors({
  origin: 'http://localhost:5173', // Update this with your frontend URL
  credentials: true
}));

// Parse JSON bodies
app.use(express.json());

// Mount auth routes
app.use('/api/auth', authRoutes);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error('Error:', err);
  res.status(500).json({
    isValid: false,
    message: 'Internal server error'
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
