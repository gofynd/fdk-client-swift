

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: AppProvidersGlobalProviderRequestObj
        Used By: Communication
    */

    class AppProvidersGlobalProviderRequestObj: Codable {
        
        
        public var transaction: AppProvidersGlobalProviderRequestObjProvider?
        
        public var otp: AppProvidersGlobalProviderRequestObjProvider?
        

        public enum CodingKeys: String, CodingKey {
            
            case transaction = "transaction"
            
            case otp = "otp"
            
        }

        public init(otp: AppProvidersGlobalProviderRequestObjProvider? = nil, transaction: AppProvidersGlobalProviderRequestObjProvider? = nil) {
            
            self.transaction = transaction
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    transaction = try container.decode(AppProvidersGlobalProviderRequestObjProvider.self, forKey: .transaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otp = try container.decode(AppProvidersGlobalProviderRequestObjProvider.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: AppProvidersGlobalProviderRequestObj
        Used By: Communication
    */

    class AppProvidersGlobalProviderRequestObj: Codable {
        
        
        public var transaction: AppProvidersGlobalProviderRequestObjProvider?
        
        public var otp: AppProvidersGlobalProviderRequestObjProvider?
        

        public enum CodingKeys: String, CodingKey {
            
            case transaction = "transaction"
            
            case otp = "otp"
            
        }

        public init(otp: AppProvidersGlobalProviderRequestObjProvider? = nil, transaction: AppProvidersGlobalProviderRequestObjProvider? = nil) {
            
            self.transaction = transaction
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    transaction = try container.decode(AppProvidersGlobalProviderRequestObjProvider.self, forKey: .transaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otp = try container.decode(AppProvidersGlobalProviderRequestObjProvider.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}


