

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RefundErrorCodeAndMessage
        Used By: Payment
    */
    class RefundErrorCodeAndMessage: Codable {
        
        public var success: Bool
        
        public var message: String?
        
        public var data: IFSCErrorData?
        
        public var error: EDCError?
        
        public var errors: EDCError?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case data = "data"
            
            case error = "error"
            
            case errors = "errors"
            
        }

        public init(data: IFSCErrorData? = nil, error: EDCError? = nil, errors: EDCError? = nil, message: String? = nil, success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.data = data
            
            self.error = error
            
            self.errors = errors
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                data = try container.decode(IFSCErrorData.self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                error = try container.decode(EDCError.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                errors = try container.decode(EDCError.self, forKey: .errors)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
        }
        
    }
}
