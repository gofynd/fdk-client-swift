

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: RuleConditionIntegerDetail
        Used By: Serviceability
    */

    class RuleConditionIntegerDetail: Codable {
        
        
        public var text: String?
        
        public var value: Int?
        
        public var stage: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
            case stage = "stage"
            
        }

        public init(stage: Bool? = nil, text: String? = nil, value: Int? = nil) {
            
            self.text = text
            
            self.value = value
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(Int.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(Bool.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: RuleConditionIntegerDetail
        Used By: Serviceability
    */

    class RuleConditionIntegerDetail: Codable {
        
        
        public var text: String?
        
        public var value: Int?
        
        public var stage: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
            case stage = "stage"
            
        }

        public init(stage: Bool? = nil, text: String? = nil, value: Int? = nil) {
            
            self.text = text
            
            self.value = value
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(Int.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(Bool.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}


