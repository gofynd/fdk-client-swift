

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: FyndRewardsCredentials
        Used By: Configuration
    */

    class FyndRewardsCredentials: Codable {
        
        
        public var publicKey: String?
        
        public var privateKey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case publicKey = "public_key"
            
            case privateKey = "private_key"
            
        }

        public init(privateKey: String? = nil, publicKey: String? = nil) {
            
            self.publicKey = publicKey
            
            self.privateKey = privateKey
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    publicKey = try container.decode(String.self, forKey: .publicKey)
                
                    if let strong_publicKey = publicKey,
                       let publicKeyData = Data(base64Encoded: strong_publicKey) {
                        publicKey = String(data: publicKeyData, encoding: .utf8) ?? publicKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    privateKey = try container.decode(String.self, forKey: .privateKey)
                
                    if let strong_privateKey = privateKey,
                       let privateKeyData = Data(base64Encoded: strong_privateKey) {
                        privateKey = String(data: privateKeyData, encoding: .utf8) ?? privateKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            
            try? container.encodeIfPresent(publicKey?.asBase64, forKey: .publicKey)
            
            
            
            
            
            
            try? container.encodeIfPresent(privateKey?.asBase64, forKey: .privateKey)
            
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: FyndRewardsCredentials
        Used By: Configuration
    */

    class FyndRewardsCredentials: Codable {
        
        
        public var publicKey: String?
        
        public var privateKey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case publicKey = "public_key"
            
            case privateKey = "private_key"
            
        }

        public init(privateKey: String? = nil, publicKey: String? = nil) {
            
            self.publicKey = publicKey
            
            self.privateKey = privateKey
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    publicKey = try container.decode(String.self, forKey: .publicKey)
                
                    if let strong_publicKey = publicKey,
                       let publicKeyData = Data(base64Encoded: strong_publicKey) {
                        publicKey = String(data: publicKeyData, encoding: .utf8) ?? publicKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    privateKey = try container.decode(String.self, forKey: .privateKey)
                
                    if let strong_privateKey = privateKey,
                       let privateKeyData = Data(base64Encoded: strong_privateKey) {
                        privateKey = String(data: privateKeyData, encoding: .utf8) ?? privateKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            
            try? container.encodeIfPresent(publicKey?.asBase64, forKey: .publicKey)
            
            
            
            
            
            
            try? container.encodeIfPresent(privateKey?.asBase64, forKey: .privateKey)
            
            
            
        }
        
    }
}


