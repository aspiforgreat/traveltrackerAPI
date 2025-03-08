# Use Node.js for the backend
FROM node:16
WORKDIR .

# Copy backend files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

COPY . ./
# Set environment variables for MongoDB
ENV MONGODB_URI=mongodb://mongo:27017/budgetDatabase

# Expose port 8000 for the backend
EXPOSE 8000

# Start the backend server
CMD ["node", "budgetPlannerServer.js"]