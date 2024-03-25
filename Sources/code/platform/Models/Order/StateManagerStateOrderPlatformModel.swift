

import Foundation


public extension PlatformClient.Order {
    /*
        Model: StateManagerState
        Used By: Order
    */

    class StateManagerState: Codable {
        
        
        public var id: Int?
        
        public var state: String?
        
        public var platformDisplayName: String?
        
        public var appFacing: Bool?
        
        public var appDisplayName: String?
        
        public var isActive: Bool?
        
        public var stateType: String?
        
        public var journeyType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case state = "state"
            
            case platformDisplayName = "platform_display_name"
            
            case appFacing = "app_facing"
            
            case appDisplayName = "app_display_name"
            
            case isActive = "is_active"
            
            case stateType = "state_type"
            
            case journeyType = "journey_type"
            
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, id: Int? = nil, isActive: Bool? = nil, journeyType: String? = nil, platformDisplayName: String? = nil, state: String? = nil, stateType: String? = nil) {
            
            self.id = id
            
            self.state = state
            
            self.platformDisplayName = platformDisplayName
            
            self.appFacing = appFacing
            
            self.appDisplayName = appDisplayName
            
            self.isActive = isActive
            
            self.stateType = stateType
            
            self.journeyType = journeyType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformDisplayName = try container.decode(String.self, forKey: .platformDisplayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appFacing = try container.decode(Bool.self, forKey: .appFacing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appDisplayName = try container.decode(String.self, forKey: .appDisplayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateType = try container.decode(String.self, forKey: .stateType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    journeyType = try container.decode(String.self, forKey: .journeyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(platformDisplayName, forKey: .platformDisplayName)
            
            
            
            
            try? container.encodeIfPresent(appFacing, forKey: .appFacing)
            
            
            
            
            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(stateType, forKey: .stateType)
            
            
            
            
            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: StateManagerState
        Used By: Order
    */

    class StateManagerState: Codable {
        
        
        public var id: Int?
        
        public var state: String?
        
        public var platformDisplayName: String?
        
        public var appFacing: Bool?
        
        public var appDisplayName: String?
        
        public var isActive: Bool?
        
        public var stateType: String?
        
        public var journeyType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case state = "state"
            
            case platformDisplayName = "platform_display_name"
            
            case appFacing = "app_facing"
            
            case appDisplayName = "app_display_name"
            
            case isActive = "is_active"
            
            case stateType = "state_type"
            
            case journeyType = "journey_type"
            
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, id: Int? = nil, isActive: Bool? = nil, journeyType: String? = nil, platformDisplayName: String? = nil, state: String? = nil, stateType: String? = nil) {
            
            self.id = id
            
            self.state = state
            
            self.platformDisplayName = platformDisplayName
            
            self.appFacing = appFacing
            
            self.appDisplayName = appDisplayName
            
            self.isActive = isActive
            
            self.stateType = stateType
            
            self.journeyType = journeyType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformDisplayName = try container.decode(String.self, forKey: .platformDisplayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appFacing = try container.decode(Bool.self, forKey: .appFacing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appDisplayName = try container.decode(String.self, forKey: .appDisplayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateType = try container.decode(String.self, forKey: .stateType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    journeyType = try container.decode(String.self, forKey: .journeyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(platformDisplayName, forKey: .platformDisplayName)
            
            
            
            
            try? container.encodeIfPresent(appFacing, forKey: .appFacing)
            
            
            
            
            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(stateType, forKey: .stateType)
            
            
            
            
            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
            
            
        }
        
    }
}


