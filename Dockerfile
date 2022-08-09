FROM node:14.17.0-alpine as builder

# set working directory
WORKDIR /app

# add /app/node_modules/.bin to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# Copy dependencies files
COPY yarn.lock ./

# install app dependencies
RUN yarn

# copy source code
COPY . .

CMD ["yarn", "start"]

EXPOSE 3000