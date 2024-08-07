

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Config
        Used By: Order
    */

    class Config: Codable {
        
        
        public var fromState: String?
        
        public var toState: String?
        
        public var preHooks: [PreHook]?
        
        public var postHooks: [PostHook]?
        
        public var flags: Flags?
        

        public enum CodingKeys: String, CodingKey {
            
            case fromState = "from_state"
            
            case toState = "to_state"
            
            case preHooks = "pre_hooks"
            
            case postHooks = "post_hooks"
            
            case flags = "flags"
            
        }

        public init(flags: Flags? = nil, fromState: String? = nil, postHooks: [PostHook]? = nil, preHooks: [PreHook]? = nil, toState: String? = nil) {
            
            self.fromState = fromState
            
            self.toState = toState
            
            self.preHooks = preHooks
            
            self.postHooks = postHooks
            
            self.flags = flags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fromState = try container.decode(String.self, forKey: .fromState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    toState = try container.decode(String.self, forKey: .toState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    preHooks = try container.decode([PreHook].self, forKey: .preHooks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postHooks = try container.decode([PostHook].self, forKey: .postHooks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    flags = try container.decode(Flags.self, forKey: .flags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromState, forKey: .fromState)
            
            
            
            
            try? container.encodeIfPresent(toState, forKey: .toState)
            
            
            
            
            try? container.encodeIfPresent(preHooks, forKey: .preHooks)
            
            
            
            
            try? container.encodeIfPresent(postHooks, forKey: .postHooks)
            
            
            
            
            try? container.encodeIfPresent(flags, forKey: .flags)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Config
        Used By: Order
    */

    class Config: Codable {
        
        
        public var fromState: String?
        
        public var toState: String?
        
        public var preHooks: [PreHook]?
        
        public var postHooks: [PostHook]?
        
        public var flags: Flags?
        

        public enum CodingKeys: String, CodingKey {
            
            case fromState = "from_state"
            
            case toState = "to_state"
            
            case preHooks = "pre_hooks"
            
            case postHooks = "post_hooks"
            
            case flags = "flags"
            
        }

        public init(flags: Flags? = nil, fromState: String? = nil, postHooks: [PostHook]? = nil, preHooks: [PreHook]? = nil, toState: String? = nil) {
            
            self.fromState = fromState
            
            self.toState = toState
            
            self.preHooks = preHooks
            
            self.postHooks = postHooks
            
            self.flags = flags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fromState = try container.decode(String.self, forKey: .fromState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    toState = try container.decode(String.self, forKey: .toState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    preHooks = try container.decode([PreHook].self, forKey: .preHooks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postHooks = try container.decode([PostHook].self, forKey: .postHooks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    flags = try container.decode(Flags.self, forKey: .flags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromState, forKey: .fromState)
            
            
            
            
            try? container.encodeIfPresent(toState, forKey: .toState)
            
            
            
            
            try? container.encodeIfPresent(preHooks, forKey: .preHooks)
            
            
            
            
            try? container.encodeIfPresent(postHooks, forKey: .postHooks)
            
            
            
            
            try? container.encodeIfPresent(flags, forKey: .flags)
            
            
        }
        
    }
}


