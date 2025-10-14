

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Account
        Used By: Order
    */

    class Account: Codable {
        
        
        public var channelAccountId: String?
        
        public var companyId: Int?
        
        public var channelAccountName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case channelAccountId = "channel_account_id"
            
            case companyId = "company_id"
            
            case channelAccountName = "channel_account_name"
            
        }

        public init(channelAccountId: String? = nil, channelAccountName: String? = nil, companyId: Int? = nil) {
            
            self.channelAccountId = channelAccountId
            
            self.companyId = companyId
            
            self.channelAccountName = channelAccountName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    channelAccountId = try container.decode(String.self, forKey: .channelAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelAccountName = try container.decode(String.self, forKey: .channelAccountName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelAccountId, forKey: .channelAccountId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(channelAccountName, forKey: .channelAccountName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Account
        Used By: Order
    */

    class Account: Codable {
        
        
        public var channelAccountId: String?
        
        public var companyId: Int?
        
        public var channelAccountName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case channelAccountId = "channel_account_id"
            
            case companyId = "company_id"
            
            case channelAccountName = "channel_account_name"
            
        }

        public init(channelAccountId: String? = nil, channelAccountName: String? = nil, companyId: Int? = nil) {
            
            self.channelAccountId = channelAccountId
            
            self.companyId = companyId
            
            self.channelAccountName = channelAccountName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    channelAccountId = try container.decode(String.self, forKey: .channelAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelAccountName = try container.decode(String.self, forKey: .channelAccountName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelAccountId, forKey: .channelAccountId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(channelAccountName, forKey: .channelAccountName)
            
            
        }
        
    }
}


