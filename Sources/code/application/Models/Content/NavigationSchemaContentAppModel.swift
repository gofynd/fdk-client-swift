

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: NavigationSchema
        Used By: Content
    */
    class NavigationSchema: Codable {
        
        public var id: String?
        
        public var application: String?
        
        public var archived: Bool?
        
        public var name: String?
        
        public var slug: String?
        
        public var platform: [String]?
        
        public var createdBy: CreatedBySchema?
        
        public var dateMeta: DateMeta?
        
        public var orientation: Orientation?
        
        public var version: Double?
        
        public var navigation: [NavigationReference]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case application = "application"
            
            case archived = "archived"
            
            case name = "name"
            
            case slug = "slug"
            
            case platform = "platform"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case orientation = "orientation"
            
            case version = "version"
            
            case navigation = "navigation"
            
        }

        public init(application: String? = nil, archived: Bool? = nil, createdBy: CreatedBySchema? = nil, dateMeta: DateMeta? = nil, name: String? = nil, navigation: [NavigationReference]? = nil, orientation: Orientation? = nil, platform: [String]? = nil, slug: String? = nil, version: Double? = nil, id: String? = nil) {
            
            self.id = id
            
            self.application = application
            
            self.archived = archived
            
            self.name = name
            
            self.slug = slug
            
            self.platform = platform
            
            self.createdBy = createdBy
            
            self.dateMeta = dateMeta
            
            self.orientation = orientation
            
            self.version = version
            
            self.navigation = navigation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                application = try container.decode(String.self, forKey: .application)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                archived = try container.decode(Bool.self, forKey: .archived)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                platform = try container.decode([String].self, forKey: .platform)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdBy = try container.decode(CreatedBySchema.self, forKey: .createdBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orientation = try container.decode(Orientation.self, forKey: .orientation)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                version = try container.decode(Double.self, forKey: .version)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                navigation = try container.decode([NavigationReference].self, forKey: .navigation)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            try? container.encodeIfPresent(navigation, forKey: .navigation)
            
            
        }
        
    }
}
