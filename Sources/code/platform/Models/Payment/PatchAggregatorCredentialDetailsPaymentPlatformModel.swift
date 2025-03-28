

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PatchAggregatorCredentialDetails
        Used By: Payment
    */

    class PatchAggregatorCredentialDetails: Codable {
        
        
        public var success: Bool?
        
        public var aggregators: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case aggregators = "aggregators"
            
        }

        public init(aggregators: [String]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.aggregators = aggregators
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregators = try container.decode([String].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PatchAggregatorCredentialDetails
        Used By: Payment
    */

    class PatchAggregatorCredentialDetails: Codable {
        
        
        public var success: Bool?
        
        public var aggregators: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case aggregators = "aggregators"
            
        }

        public init(aggregators: [String]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.aggregators = aggregators
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregators = try container.decode([String].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
        }
        
    }
}


