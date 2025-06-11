

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: OverrideStatusSchema
        Used By: Serviceability
    */

    class OverrideStatusSchema: Codable {
        
        
        public var overridingProcessStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case overridingProcessStatus = "overriding_process_status"
            
        }

        public init(overridingProcessStatus: String? = nil) {
            
            self.overridingProcessStatus = overridingProcessStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    overridingProcessStatus = try container.decode(String.self, forKey: .overridingProcessStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(overridingProcessStatus, forKey: .overridingProcessStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: OverrideStatusSchema
        Used By: Serviceability
    */

    class OverrideStatusSchema: Codable {
        
        
        public var overridingProcessStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case overridingProcessStatus = "overriding_process_status"
            
        }

        public init(overridingProcessStatus: String? = nil) {
            
            self.overridingProcessStatus = overridingProcessStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    overridingProcessStatus = try container.decode(String.self, forKey: .overridingProcessStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(overridingProcessStatus, forKey: .overridingProcessStatus)
            
            
        }
        
    }
}


