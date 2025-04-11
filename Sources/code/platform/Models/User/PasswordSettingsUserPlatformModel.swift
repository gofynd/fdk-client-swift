

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: PasswordSettings
        Used By: User
    */

    class PasswordSettings: Codable {
        
        
        public var configs: PasswordConfigs?
        
        public var history: PasswordHistory?
        
        public var expiry: PasswordExpiry?
        

        public enum CodingKeys: String, CodingKey {
            
            case configs = "configs"
            
            case history = "history"
            
            case expiry = "expiry"
            
        }

        public init(configs: PasswordConfigs? = nil, expiry: PasswordExpiry? = nil, history: PasswordHistory? = nil) {
            
            self.configs = configs
            
            self.history = history
            
            self.expiry = expiry
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    configs = try container.decode(PasswordConfigs.self, forKey: .configs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    history = try container.decode(PasswordHistory.self, forKey: .history)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expiry = try container.decode(PasswordExpiry.self, forKey: .expiry)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(configs, forKey: .configs)
            
            
            
            
            try? container.encodeIfPresent(history, forKey: .history)
            
            
            
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
            
        }
        
    }
}


