

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: HistoryItem
        Used By: Payment
    */

    class HistoryItem: Codable {
        
        
        public var createdOn: String?
        
        public var updatedOn: String?
        
        public var reviewer: String?
        
        public var comments: String?
        
        public var reviewStatus: String?
        
        public var isActive: Bool?
        
        public var configType: String?
        
        public var publicToken: String?
        
        public var razorpayAccountId: String?
        
        public var key: String?
        
        public var secret: String?
        
        public var webhookSecret: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case updatedOn = "updated_on"
            
            case reviewer = "reviewer"
            
            case comments = "comments"
            
            case reviewStatus = "review_status"
            
            case isActive = "is_active"
            
            case configType = "config_type"
            
            case publicToken = "public_token"
            
            case razorpayAccountId = "razorpay_account_id"
            
            case key = "key"
            
            case secret = "secret"
            
            case webhookSecret = "webhook_secret"
            
        }

        public init(comments: String? = nil, configType: String? = nil, createdOn: String? = nil, isActive: Bool? = nil, key: String? = nil, publicToken: String? = nil, razorpayAccountId: String? = nil, reviewer: String? = nil, reviewStatus: String? = nil, secret: String? = nil, updatedOn: String? = nil, webhookSecret: String? = nil) {
            
            self.createdOn = createdOn
            
            self.updatedOn = updatedOn
            
            self.reviewer = reviewer
            
            self.comments = comments
            
            self.reviewStatus = reviewStatus
            
            self.isActive = isActive
            
            self.configType = configType
            
            self.publicToken = publicToken
            
            self.razorpayAccountId = razorpayAccountId
            
            self.key = key
            
            self.secret = secret
            
            self.webhookSecret = webhookSecret
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedOn = try container.decode(String.self, forKey: .updatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewer = try container.decode(String.self, forKey: .reviewer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comments = try container.decode(String.self, forKey: .comments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewStatus = try container.decode(String.self, forKey: .reviewStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configType = try container.decode(String.self, forKey: .configType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    publicToken = try container.decode(String.self, forKey: .publicToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    razorpayAccountId = try container.decode(String.self, forKey: .razorpayAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secret = try container.decode(String.self, forKey: .secret)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    webhookSecret = try container.decode(String.self, forKey: .webhookSecret)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
            
            
            try? container.encodeIfPresent(reviewer, forKey: .reviewer)
            
            
            
            
            try? container.encodeIfPresent(comments, forKey: .comments)
            
            
            
            
            try? container.encodeIfPresent(reviewStatus, forKey: .reviewStatus)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(publicToken, forKey: .publicToken)
            
            
            
            
            try? container.encodeIfPresent(razorpayAccountId, forKey: .razorpayAccountId)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(webhookSecret, forKey: .webhookSecret)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: HistoryItem
        Used By: Payment
    */

    class HistoryItem: Codable {
        
        
        public var createdOn: String?
        
        public var updatedOn: String?
        
        public var reviewer: String?
        
        public var comments: String?
        
        public var reviewStatus: String?
        
        public var isActive: Bool?
        
        public var configType: String?
        
        public var publicToken: String?
        
        public var razorpayAccountId: String?
        
        public var key: String?
        
        public var secret: String?
        
        public var webhookSecret: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case updatedOn = "updated_on"
            
            case reviewer = "reviewer"
            
            case comments = "comments"
            
            case reviewStatus = "review_status"
            
            case isActive = "is_active"
            
            case configType = "config_type"
            
            case publicToken = "public_token"
            
            case razorpayAccountId = "razorpay_account_id"
            
            case key = "key"
            
            case secret = "secret"
            
            case webhookSecret = "webhook_secret"
            
        }

        public init(comments: String? = nil, configType: String? = nil, createdOn: String? = nil, isActive: Bool? = nil, key: String? = nil, publicToken: String? = nil, razorpayAccountId: String? = nil, reviewer: String? = nil, reviewStatus: String? = nil, secret: String? = nil, updatedOn: String? = nil, webhookSecret: String? = nil) {
            
            self.createdOn = createdOn
            
            self.updatedOn = updatedOn
            
            self.reviewer = reviewer
            
            self.comments = comments
            
            self.reviewStatus = reviewStatus
            
            self.isActive = isActive
            
            self.configType = configType
            
            self.publicToken = publicToken
            
            self.razorpayAccountId = razorpayAccountId
            
            self.key = key
            
            self.secret = secret
            
            self.webhookSecret = webhookSecret
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedOn = try container.decode(String.self, forKey: .updatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewer = try container.decode(String.self, forKey: .reviewer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comments = try container.decode(String.self, forKey: .comments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewStatus = try container.decode(String.self, forKey: .reviewStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configType = try container.decode(String.self, forKey: .configType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    publicToken = try container.decode(String.self, forKey: .publicToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    razorpayAccountId = try container.decode(String.self, forKey: .razorpayAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secret = try container.decode(String.self, forKey: .secret)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    webhookSecret = try container.decode(String.self, forKey: .webhookSecret)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
            
            
            try? container.encodeIfPresent(reviewer, forKey: .reviewer)
            
            
            
            
            try? container.encodeIfPresent(comments, forKey: .comments)
            
            
            
            
            try? container.encodeIfPresent(reviewStatus, forKey: .reviewStatus)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(publicToken, forKey: .publicToken)
            
            
            
            
            try? container.encodeIfPresent(razorpayAccountId, forKey: .razorpayAccountId)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(webhookSecret, forKey: .webhookSecret)
            
            
        }
        
    }
}


