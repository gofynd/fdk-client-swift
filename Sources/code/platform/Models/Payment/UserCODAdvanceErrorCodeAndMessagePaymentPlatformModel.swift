

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: UserCODAdvanceErrorCodeAndMessage
        Used By: Payment
    */

    class UserCODAdvanceErrorCodeAndMessage: Codable {
        
        
        public var success: Bool
        
        public var error: UserCodErrorMessage?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: UserCodErrorMessage? = nil, success: Bool) {
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(UserCodErrorMessage.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: UserCODAdvanceErrorCodeAndMessage
        Used By: Payment
    */

    class UserCODAdvanceErrorCodeAndMessage: Codable {
        
        
        public var success: Bool
        
        public var error: UserCodErrorMessage?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: UserCodErrorMessage? = nil, success: Bool) {
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(UserCodErrorMessage.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


