

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ValidateCustomerDetails
        Used By: Payment
    */

    class ValidateCustomerDetails: Codable {
        
        
        public var message: String
        
        public var data: ValidateCustomer?
        
        public var success: Bool
        
        public var error: ValidateCustomer?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case data = "data"
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(data: ValidateCustomer? = nil, error: ValidateCustomer? = nil, message: String, success: Bool) {
            
            self.message = message
            
            self.data = data
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    data = try container.decode(ValidateCustomer.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(ValidateCustomer.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ValidateCustomerDetails
        Used By: Payment
    */

    class ValidateCustomerDetails: Codable {
        
        
        public var message: String
        
        public var data: ValidateCustomer?
        
        public var success: Bool
        
        public var error: ValidateCustomer?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case data = "data"
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(data: ValidateCustomer? = nil, error: ValidateCustomer? = nil, message: String, success: Bool) {
            
            self.message = message
            
            self.data = data
            
            self.success = success
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    data = try container.decode(ValidateCustomer.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(ValidateCustomer.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


