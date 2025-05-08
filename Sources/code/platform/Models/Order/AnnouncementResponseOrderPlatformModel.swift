

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AnnouncementResponse
        Used By: Order
    */

    class AnnouncementResponse: Codable {
        
        
        public var toDatetime: String?
        
        public var id: Int
        
        public var description: String?
        
        public var platformName: String?
        
        public var fromDatetime: String?
        
        public var platformId: String?
        
        public var title: String?
        
        public var companyId: Int?
        
        public var logoUrl: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case toDatetime = "to_datetime"
            
            case id = "id"
            
            case description = "description"
            
            case platformName = "platform_name"
            
            case fromDatetime = "from_datetime"
            
            case platformId = "platform_id"
            
            case title = "title"
            
            case companyId = "company_id"
            
            case logoUrl = "logo_url"
            
            case createdAt = "created_at"
            
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, description: String? = nil, fromDatetime: String? = nil, id: Int, logoUrl: String? = nil, platformId: String? = nil, platformName: String? = nil, title: String? = nil, toDatetime: String? = nil) {
            
            self.toDatetime = toDatetime
            
            self.id = id
            
            self.description = description
            
            self.platformName = platformName
            
            self.fromDatetime = fromDatetime
            
            self.platformId = platformId
            
            self.title = title
            
            self.companyId = companyId
            
            self.logoUrl = logoUrl
            
            self.createdAt = createdAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    toDatetime = try container.decode(String.self, forKey: .toDatetime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformName = try container.decode(String.self, forKey: .platformName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fromDatetime = try container.decode(String.self, forKey: .fromDatetime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformId = try container.decode(String.self, forKey: .platformId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logoUrl = try container.decode(String.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(toDatetime, forKey: .toDatetime)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(platformName, forKey: .platformName)
            
            
            
            
            try? container.encodeIfPresent(fromDatetime, forKey: .fromDatetime)
            
            
            
            
            try? container.encodeIfPresent(platformId, forKey: .platformId)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AnnouncementResponse
        Used By: Order
    */

    class AnnouncementResponse: Codable {
        
        
        public var toDatetime: String?
        
        public var id: Int
        
        public var description: String?
        
        public var platformName: String?
        
        public var fromDatetime: String?
        
        public var platformId: String?
        
        public var title: String?
        
        public var companyId: Int?
        
        public var logoUrl: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case toDatetime = "to_datetime"
            
            case id = "id"
            
            case description = "description"
            
            case platformName = "platform_name"
            
            case fromDatetime = "from_datetime"
            
            case platformId = "platform_id"
            
            case title = "title"
            
            case companyId = "company_id"
            
            case logoUrl = "logo_url"
            
            case createdAt = "created_at"
            
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, description: String? = nil, fromDatetime: String? = nil, id: Int, logoUrl: String? = nil, platformId: String? = nil, platformName: String? = nil, title: String? = nil, toDatetime: String? = nil) {
            
            self.toDatetime = toDatetime
            
            self.id = id
            
            self.description = description
            
            self.platformName = platformName
            
            self.fromDatetime = fromDatetime
            
            self.platformId = platformId
            
            self.title = title
            
            self.companyId = companyId
            
            self.logoUrl = logoUrl
            
            self.createdAt = createdAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    toDatetime = try container.decode(String.self, forKey: .toDatetime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformName = try container.decode(String.self, forKey: .platformName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fromDatetime = try container.decode(String.self, forKey: .fromDatetime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformId = try container.decode(String.self, forKey: .platformId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logoUrl = try container.decode(String.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(toDatetime, forKey: .toDatetime)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(platformName, forKey: .platformName)
            
            
            
            
            try? container.encodeIfPresent(fromDatetime, forKey: .fromDatetime)
            
            
            
            
            try? container.encodeIfPresent(platformId, forKey: .platformId)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}


