

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: CreateThemePreviewBody
        Used By: Theme
    */

    class CreateThemePreviewBody: Codable {
        
        
        public var pincode: Int?
        
        public var userGroupUid: Int?
        
        public var previewDateTime: String?
        
        public var page: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case userGroupUid = "user_group_uid"
            
            case previewDateTime = "preview_date_time"
            
            case page = "page"
            
        }

        public init(page: String? = nil, pincode: Int? = nil, previewDateTime: String? = nil, userGroupUid: Int? = nil) {
            
            self.pincode = pincode
            
            self.userGroupUid = userGroupUid
            
            self.previewDateTime = previewDateTime
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userGroupUid = try container.decode(Int.self, forKey: .userGroupUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previewDateTime = try container.decode(String.self, forKey: .previewDateTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(String.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(userGroupUid, forKey: .userGroupUid)
            
            
            
            
            try? container.encodeIfPresent(previewDateTime, forKey: .previewDateTime)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: CreateThemePreviewBody
        Used By: Theme
    */

    class CreateThemePreviewBody: Codable {
        
        
        public var pincode: Int?
        
        public var userGroupUid: Int?
        
        public var previewDateTime: String?
        
        public var page: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case userGroupUid = "user_group_uid"
            
            case previewDateTime = "preview_date_time"
            
            case page = "page"
            
        }

        public init(page: String? = nil, pincode: Int? = nil, previewDateTime: String? = nil, userGroupUid: Int? = nil) {
            
            self.pincode = pincode
            
            self.userGroupUid = userGroupUid
            
            self.previewDateTime = previewDateTime
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userGroupUid = try container.decode(Int.self, forKey: .userGroupUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previewDateTime = try container.decode(String.self, forKey: .previewDateTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(String.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(userGroupUid, forKey: .userGroupUid)
            
            
            
            
            try? container.encodeIfPresent(previewDateTime, forKey: .previewDateTime)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


