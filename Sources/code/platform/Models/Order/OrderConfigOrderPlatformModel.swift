

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderConfig
        Used By: Order
    */

    class OrderConfig: Codable {
        
        
        public var createUser: Bool?
        
        public var articleLookup: String?
        
        public var bagEndState: String?
        
        public var affiliate: Affiliate
        
        public var storeLookup: String?
        
        public var affiliateStoreIdMapping: [AffiliateStoreIdMapping]
        
        public var config: ConfigData?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case createUser = "create_user"
            
            case articleLookup = "article_lookup"
            
            case bagEndState = "bag_end_state"
            
            case affiliate = "affiliate"
            
            case storeLookup = "store_lookup"
            
            case affiliateStoreIdMapping = "affiliate_store_id_mapping"
            
            case config = "config"
            
            case success = "success"
            
        }

        public init(affiliate: Affiliate, affiliateStoreIdMapping: [AffiliateStoreIdMapping], articleLookup: String? = nil, bagEndState: String? = nil, config: ConfigData? = nil, createUser: Bool? = nil, storeLookup: String? = nil, success: Bool? = nil) {
            
            self.createUser = createUser
            
            self.articleLookup = articleLookup
            
            self.bagEndState = bagEndState
            
            self.affiliate = affiliate
            
            self.storeLookup = storeLookup
            
            self.affiliateStoreIdMapping = affiliateStoreIdMapping
            
            self.config = config
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createUser = try container.decode(Bool.self, forKey: .createUser)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleLookup = try container.decode(String.self, forKey: .articleLookup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagEndState = try container.decode(String.self, forKey: .bagEndState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliate = try container.decode(Affiliate.self, forKey: .affiliate)
                
            
            
            
                do {
                    storeLookup = try container.decode(String.self, forKey: .storeLookup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliateStoreIdMapping = try container.decode([AffiliateStoreIdMapping].self, forKey: .affiliateStoreIdMapping)
                
            
            
            
                do {
                    config = try container.decode(ConfigData.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createUser, forKey: .createUser)
            
            
            
            
            try? container.encodeIfPresent(articleLookup, forKey: .articleLookup)
            
            
            
            
            try? container.encodeIfPresent(bagEndState, forKey: .bagEndState)
            
            
            
            
            try? container.encodeIfPresent(affiliate, forKey: .affiliate)
            
            
            
            
            try? container.encodeIfPresent(storeLookup, forKey: .storeLookup)
            
            
            
            
            try? container.encodeIfPresent(affiliateStoreIdMapping, forKey: .affiliateStoreIdMapping)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderConfig
        Used By: Order
    */

    class OrderConfig: Codable {
        
        
        public var createUser: Bool?
        
        public var articleLookup: String?
        
        public var bagEndState: String?
        
        public var affiliate: Affiliate
        
        public var storeLookup: String?
        
        public var affiliateStoreIdMapping: [AffiliateStoreIdMapping]
        
        public var config: ConfigData?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case createUser = "create_user"
            
            case articleLookup = "article_lookup"
            
            case bagEndState = "bag_end_state"
            
            case affiliate = "affiliate"
            
            case storeLookup = "store_lookup"
            
            case affiliateStoreIdMapping = "affiliate_store_id_mapping"
            
            case config = "config"
            
            case success = "success"
            
        }

        public init(affiliate: Affiliate, affiliateStoreIdMapping: [AffiliateStoreIdMapping], articleLookup: String? = nil, bagEndState: String? = nil, config: ConfigData? = nil, createUser: Bool? = nil, storeLookup: String? = nil, success: Bool? = nil) {
            
            self.createUser = createUser
            
            self.articleLookup = articleLookup
            
            self.bagEndState = bagEndState
            
            self.affiliate = affiliate
            
            self.storeLookup = storeLookup
            
            self.affiliateStoreIdMapping = affiliateStoreIdMapping
            
            self.config = config
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createUser = try container.decode(Bool.self, forKey: .createUser)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleLookup = try container.decode(String.self, forKey: .articleLookup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagEndState = try container.decode(String.self, forKey: .bagEndState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliate = try container.decode(Affiliate.self, forKey: .affiliate)
                
            
            
            
                do {
                    storeLookup = try container.decode(String.self, forKey: .storeLookup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliateStoreIdMapping = try container.decode([AffiliateStoreIdMapping].self, forKey: .affiliateStoreIdMapping)
                
            
            
            
                do {
                    config = try container.decode(ConfigData.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createUser, forKey: .createUser)
            
            
            
            
            try? container.encodeIfPresent(articleLookup, forKey: .articleLookup)
            
            
            
            
            try? container.encodeIfPresent(bagEndState, forKey: .bagEndState)
            
            
            
            
            try? container.encodeIfPresent(affiliate, forKey: .affiliate)
            
            
            
            
            try? container.encodeIfPresent(storeLookup, forKey: .storeLookup)
            
            
            
            
            try? container.encodeIfPresent(affiliateStoreIdMapping, forKey: .affiliateStoreIdMapping)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


