

 // SPDX-License-Identifier: MIT
 pragma solidity ^0.8.26;


    contract Twitter{

        uint16 constant max_tweet_length = 280;

        struct Tweet {
            address author;
            string content;
            uint256 timestamp;
            uint256 likes;
        }
        
        mapping(address => Tweet[]) public tweets;

        
        function createTweet(string memory _tweet) public {

            require(bytes(_tweet).length <= max_tweet_length, "Tweet is too long make it in 280 character");

            Tweet memory newTweet = Tweet({
                author: msg.sender,
                content: _tweet,
                timestamp: block.timestamp,
                likes: 0
            });
            tweets[msg.sender].push(newTweet);
        }

        function getTweet(address _owner, uint _i) public view returns (Tweet memory){
            return tweets[_owner][_i];
        }

        function getAllTweet(address _owner) public view returns (Tweet[] memory){
            return tweets[_owner];
        }
    }