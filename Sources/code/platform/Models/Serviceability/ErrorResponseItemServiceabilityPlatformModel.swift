

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ErrorResponseItem
        Used By: Serviceability
    */

    class ErrorResponseItem: Codable {
        
        
        public var message: String
        
        public var errorName: String
        
        public var errorCode: Int
        
        public var value: String
        
        public var conflictingAreas: [ConflictingArea]
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errorName = "error_name"
            
            case errorCode = "error_code"
            
            case value = "value"
            
            case conflictingAreas = "conflicting_areas"
            
        }

        public init(conflictingAreas: [ConflictingArea], errorCode: Int, errorName: String, message: String, value: String) {
            
            self.message = message
            
            self.errorName = errorName
            
            self.errorCode = errorCode
            
            self.value = value
            
            self.conflictingAreas = conflictingAreas
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                errorName = try container.decode(String.self, forKey: .errorName)
                
            
            
            
                errorCode = try container.decode(Int.self, forKey: .errorCode)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                conflictingAreas = try container.decode([ConflictingArea].self, forKey: .conflictingAreas)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errorName, forKey: .errorName)
            
            
            
            
            try? container.encodeIfPresent(errorCode, forKey: .errorCode)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(conflictingAreas, forKey: .conflictingAreas)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ErrorResponseItem
        Used By: Serviceability
    */

    class ErrorResponseItem: Codable {
        
        
        public var message: String
        
        public var errorName: String
        
        public var errorCode: Int
        
        public var value: String
        
        public var conflictingAreas: [ConflictingArea]
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errorName = "error_name"
            
            case errorCode = "error_code"
            
            case value = "value"
            
            case conflictingAreas = "conflicting_areas"
            
        }

        public init(conflictingAreas: [ConflictingArea], errorCode: Int, errorName: String, message: String, value: String) {
            
            self.message = message
            
            self.errorName = errorName
            
            self.errorCode = errorCode
            
            self.value = value
            
            self.conflictingAreas = conflictingAreas
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                errorName = try container.decode(String.self, forKey: .errorName)
                
            
            
            
                errorCode = try container.decode(Int.self, forKey: .errorCode)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                conflictingAreas = try container.decode([ConflictingArea].self, forKey: .conflictingAreas)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errorName, forKey: .errorName)
            
            
            
            
            try? container.encodeIfPresent(errorCode, forKey: .errorCode)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(conflictingAreas, forKey: .conflictingAreas)
            
            
        }
        
    }
}


