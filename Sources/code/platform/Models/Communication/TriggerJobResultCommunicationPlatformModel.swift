

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: TriggerJobResult
        Used By: Communication
    */

    class TriggerJobResult: Codable {
        
        
        public var status: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(status: Int? = nil) {
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: TriggerJobResult
        Used By: Communication
    */

    class TriggerJobResult: Codable {
        
        
        public var status: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(status: Int? = nil) {
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


