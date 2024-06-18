

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FailedOrderLogDetails
        Used By: Order
    */

    class FailedOrderLogDetails: Codable {
        
        
        public var errorTrace: String
        
        public var exception: String
        

        public enum CodingKeys: String, CodingKey {
            
            case errorTrace = "error_trace"
            
            case exception = "exception"
            
        }

        public init(errorTrace: String, exception: String) {
            
            self.errorTrace = errorTrace
            
            self.exception = exception
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                errorTrace = try container.decode(String.self, forKey: .errorTrace)
                
            
            
            
                exception = try container.decode(String.self, forKey: .exception)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)
            
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FailedOrderLogDetails
        Used By: Order
    */

    class FailedOrderLogDetails: Codable {
        
        
        public var errorTrace: String
        
        public var exception: String
        

        public enum CodingKeys: String, CodingKey {
            
            case errorTrace = "error_trace"
            
            case exception = "exception"
            
        }

        public init(errorTrace: String, exception: String) {
            
            self.errorTrace = errorTrace
            
            self.exception = exception
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                errorTrace = try container.decode(String.self, forKey: .errorTrace)
                
            
            
            
                exception = try container.decode(String.self, forKey: .exception)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)
            
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
        }
        
    }
}


