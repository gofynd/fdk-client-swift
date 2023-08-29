

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: AppProviderRes
        Used By: Communication
    */

    class AppProviderRes: Codable {
        
        
        public var transaction: AppProviderResObj?
        
        public var promotional: AppProviderResObj?
        
        public var otp: AppProviderResObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case transaction = "transaction"
            
            case promotional = "promotional"
            
            case otp = "otp"
            
        }

        public init(otp: AppProviderResObj? = nil, promotional: AppProviderResObj? = nil, transaction: AppProviderResObj? = nil) {
            
            self.transaction = transaction
            
            self.promotional = promotional
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    transaction = try container.decode(AppProviderResObj.self, forKey: .transaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotional = try container.decode(AppProviderResObj.self, forKey: .promotional)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otp = try container.decode(AppProviderResObj.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
            
            
            try? container.encodeIfPresent(promotional, forKey: .promotional)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: AppProviderRes
        Used By: Communication
    */

    class AppProviderRes: Codable {
        
        
        public var transaction: AppProviderResObj?
        
        public var promotional: AppProviderResObj?
        
        public var otp: AppProviderResObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case transaction = "transaction"
            
            case promotional = "promotional"
            
            case otp = "otp"
            
        }

        public init(otp: AppProviderResObj? = nil, promotional: AppProviderResObj? = nil, transaction: AppProviderResObj? = nil) {
            
            self.transaction = transaction
            
            self.promotional = promotional
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    transaction = try container.decode(AppProviderResObj.self, forKey: .transaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotional = try container.decode(AppProviderResObj.self, forKey: .promotional)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otp = try container.decode(AppProviderResObj.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
            
            
            try? container.encodeIfPresent(promotional, forKey: .promotional)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}


