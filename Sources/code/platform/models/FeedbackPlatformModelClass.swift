import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: Activity
        Used By: Feedback
    */

    class Activity: Codable {
        
        
        public var currentState: [String: Any]?
        
        public var documentId: String?
        
        public var previousState: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case currentState = "current_state"
            
            case documentId = "document_id"
            
            case previousState = "previous_state"
            
        }

        public init(currentState: [String: Any]?, documentId: String?, previousState: [String: Any]?) {
            
            self.currentState = currentState
            
            self.documentId = documentId
            
            self.previousState = previousState
            
        }

        public func duplicate() -> Activity {
            let dict = self.dictionary!
            let copy = Activity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currentState = try container.decode([String: Any].self, forKey: .currentState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documentId = try container.decode(String.self, forKey: .documentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previousState = try container.decode([String: Any].self, forKey: .previousState)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currentState, forKey: .currentState)
            
            
            
            
            try? container.encodeIfPresent(documentId, forKey: .documentId)
            
            
            
            
            try? container.encodeIfPresent(previousState, forKey: .previousState)
            
            
        }
        
    }
    
    /*
        Model: ActivityDump
        Used By: Feedback
    */

    class ActivityDump: Codable {
        
        
        public var activity: Activity?
        
        public var createdBy: CreatedBy?
        
        public var dateMeta: DateMeta?
        
        public var id: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case activity = "activity"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case id = "id"
            
            case type = "type"
            
        }

        public init(activity: Activity?, createdBy: CreatedBy?, dateMeta: DateMeta?, id: String?, type: String?) {
            
            self.activity = activity
            
            self.createdBy = createdBy
            
            self.dateMeta = dateMeta
            
            self.id = id
            
            self.type = type
            
        }

        public func duplicate() -> ActivityDump {
            let dict = self.dictionary!
            let copy = ActivityDump(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    activity = try container.decode(Activity.self, forKey: .activity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(activity, forKey: .activity)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: AddMediaListRequest
        Used By: Feedback
    */

    class AddMediaListRequest: Codable {
        
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaList: [AddMediaRequest]?
        
        public var refId: String?
        
        public var refType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaList = "media_list"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
        }

        public init(entityId: String?, entityType: String?, mediaList: [AddMediaRequest]?, refId: String?, refType: String?) {
            
            self.entityId = entityId
            
            self.entityType = entityType
            
            self.mediaList = mediaList
            
            self.refId = refId
            
            self.refType = refType
            
        }

        public func duplicate() -> AddMediaListRequest {
            let dict = self.dictionary!
            let copy = AddMediaListRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mediaList = try container.decode([AddMediaRequest].self, forKey: .mediaList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refId = try container.decode(String.self, forKey: .refId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refType = try container.decode(String.self, forKey: .refType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(mediaList, forKey: .mediaList)
            
            
            
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            
            
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
            
        }
        
    }
    
    /*
        Model: AddMediaRequest
        Used By: Feedback
    */

    class AddMediaRequest: Codable {
        
        
        public var cloudId: String?
        
        public var cloudName: String?
        
        public var cloudProvider: String?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaUrl: String?
        
        public var refId: String?
        
        public var refType: String?
        
        public var tags: [String]?
        
        public var thumbnailUrl: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cloudId = "cloud_id"
            
            case cloudName = "cloud_name"
            
            case cloudProvider = "cloud_provider"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaUrl = "media_url"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
            case tags = "tags"
            
            case thumbnailUrl = "thumbnail_url"
            
            case type = "type"
            
        }

        public init(cloudId: String?, cloudName: String?, cloudProvider: String?, entityId: String?, entityType: String?, mediaUrl: String?, refId: String?, refType: String?, tags: [String]?, thumbnailUrl: String?, type: String?) {
            
            self.cloudId = cloudId
            
            self.cloudName = cloudName
            
            self.cloudProvider = cloudProvider
            
            self.entityId = entityId
            
            self.entityType = entityType
            
            self.mediaUrl = mediaUrl
            
            self.refId = refId
            
            self.refType = refType
            
            self.tags = tags
            
            self.thumbnailUrl = thumbnailUrl
            
            self.type = type
            
        }

        public func duplicate() -> AddMediaRequest {
            let dict = self.dictionary!
            let copy = AddMediaRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cloudId = try container.decode(String.self, forKey: .cloudId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cloudName = try container.decode(String.self, forKey: .cloudName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cloudProvider = try container.decode(String.self, forKey: .cloudProvider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mediaUrl = try container.decode(String.self, forKey: .mediaUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refId = try container.decode(String.self, forKey: .refId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refType = try container.decode(String.self, forKey: .refType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    thumbnailUrl = try container.decode(String.self, forKey: .thumbnailUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cloudId, forKey: .cloudId)
            
            
            
            
            try? container.encodeIfPresent(cloudName, forKey: .cloudName)
            
            
            
            
            try? container.encodeIfPresent(cloudProvider, forKey: .cloudProvider)
            
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(mediaUrl, forKey: .mediaUrl)
            
            
            
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            
            
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: ApproveRequest
        Used By: Feedback
    */

    class ApproveRequest: Codable {
        
        
        public var approve: Bool?
        
        public var entityType: String?
        
        public var id: String
        
        public var reason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case approve = "approve"
            
            case entityType = "entity_type"
            
            case id = "id"
            
            case reason = "reason"
            
        }

        public init(approve: Bool?, entityType: String?, id: String, reason: String?) {
            
            self.approve = approve
            
            self.entityType = entityType
            
            self.id = id
            
            self.reason = reason
            
        }

        public func duplicate() -> ApproveRequest {
            let dict = self.dictionary!
            let copy = ApproveRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    approve = try container.decode(Bool.self, forKey: .approve)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
    
    /*
        Model: Attribute
        Used By: Feedback
    */

    class Attribute: Codable {
        
        
        public var dateMeta: DateMeta?
        
        public var description: String?
        
        public var id: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var tags: [TagMeta]?
        

        public enum CodingKeys: String, CodingKey {
            
            case dateMeta = "date_meta"
            
            case description = "description"
            
            case id = "id"
            
            case name = "name"
            
            case slug = "slug"
            
            case tags = "tags"
            
        }

        public init(dateMeta: DateMeta?, description: String?, id: String?, name: String?, slug: String?, tags: [TagMeta]?) {
            
            self.dateMeta = dateMeta
            
            self.description = description
            
            self.id = id
            
            self.name = name
            
            self.slug = slug
            
            self.tags = tags
            
        }

        public func duplicate() -> Attribute {
            let dict = self.dictionary!
            let copy = Attribute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                    tags = try container.decode([TagMeta].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
    
    /*
        Model: AttributeObject
        Used By: Feedback
    */

    class AttributeObject: Codable {
        
        
        public var description: String?
        
        public var name: String
        
        public var slug: String?
        
        public var title: String?
        
        public var type: String
        
        public var value: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
            case title = "title"
            
            case type = "type"
            
            case value = "value"
            
        }

        public init(description: String?, name: String, slug: String?, title: String?, type: String, value: Double) {
            
            self.description = description
            
            self.name = name
            
            self.slug = slug
            
            self.title = title
            
            self.type = type
            
            self.value = value
            
        }

        public func duplicate() -> AttributeObject {
            let dict = self.dictionary!
            let copy = AttributeObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                value = try container.decode(Double.self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
    
    /*
        Model: CreatedBy
        Used By: Feedback
    */

    class CreatedBy: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var tags: [TagMeta]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case tags = "tags"
            
        }

        public init(id: String?, name: String?, tags: [TagMeta]?) {
            
            self.id = id
            
            self.name = name
            
            self.tags = tags
            
        }

        public func duplicate() -> CreatedBy {
            let dict = self.dictionary!
            let copy = CreatedBy(dictionary: dict)!
            return copy
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([TagMeta].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
    
    /*
        Model: CursorGetResponse
        Used By: Feedback
    */

    class CursorGetResponse: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [[String: Any]]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> CursorGetResponse {
            let dict = self.dictionary!
            let copy = CursorGetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: DateMeta
        Used By: Feedback
    */

    class DateMeta: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(createdOn: String?, modifiedOn: String?) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public func duplicate() -> DateMeta {
            let dict = self.dictionary!
            let copy = DateMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
    
    /*
        Model: DeviceMeta
        Used By: Feedback
    */

    class DeviceMeta: Codable {
        
        
        public var appVersion: String?
        
        public var platform: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appVersion = "app_version"
            
            case platform = "platform"
            
        }

        public init(appVersion: String?, platform: String?) {
            
            self.appVersion = appVersion
            
            self.platform = platform
            
        }

        public func duplicate() -> DeviceMeta {
            let dict = self.dictionary!
            let copy = DeviceMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appVersion = try container.decode(String.self, forKey: .appVersion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appVersion, forKey: .appVersion)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
        }
        
    }
    
    /*
        Model: Entity
        Used By: Feedback
    */

    class Entity: Codable {
        
        
        public var id: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case type = "type"
            
        }

        public init(id: String?, type: String?) {
            
            self.id = id
            
            self.type = type
            
        }

        public func duplicate() -> Entity {
            let dict = self.dictionary!
            let copy = Entity(dictionary: dict)!
            return copy
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: EntityRequest
        Used By: Feedback
    */

    class EntityRequest: Codable {
        
        
        public var entityId: String?
        
        public var entityType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
        }

        public init(entityId: String?, entityType: String?) {
            
            self.entityId = entityId
            
            self.entityType = entityType
            
        }

        public func duplicate() -> EntityRequest {
            let dict = self.dictionary!
            let copy = EntityRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
        }
        
    }
    
    /*
        Model: FeedbackAttributes
        Used By: Feedback
    */

    class FeedbackAttributes: Codable {
        
        
        public var items: [Attribute]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [Attribute]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> FeedbackAttributes {
            let dict = self.dictionary!
            let copy = FeedbackAttributes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([Attribute].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: FeedbackError
        Used By: Feedback
    */

    class FeedbackError: Codable {
        
        
        public var code: [String: Any]?
        
        public var exception: String?
        
        public var info: String?
        
        public var message: String?
        
        public var meta: [String: Any]?
        
        public var requestId: String?
        
        public var stackTrace: String?
        
        public var status: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case exception = "exception"
            
            case info = "info"
            
            case message = "message"
            
            case meta = "meta"
            
            case requestId = "request_id"
            
            case stackTrace = "stack_trace"
            
            case status = "status"
            
        }

        public init(code: [String: Any]?, exception: String?, info: String?, message: String?, meta: [String: Any]?, requestId: String?, stackTrace: String?, status: Int?) {
            
            self.code = code
            
            self.exception = exception
            
            self.info = info
            
            self.message = message
            
            self.meta = meta
            
            self.requestId = requestId
            
            self.stackTrace = stackTrace
            
            self.status = status
            
        }

        public func duplicate() -> FeedbackError {
            let dict = self.dictionary!
            let copy = FeedbackError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    code = try container.decode([String: Any].self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    exception = try container.decode(String.self, forKey: .exception)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    info = try container.decode(String.self, forKey: .info)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stackTrace = try container.decode(String.self, forKey: .stackTrace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
    
    /*
        Model: FeedbackState
        Used By: Feedback
    */

    class FeedbackState: Codable {
        
        
        public var active: Bool?
        
        public var archive: Bool?
        
        public var media: String?
        
        public var qna: Bool?
        
        public var rating: Bool?
        
        public var review: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case archive = "archive"
            
            case media = "media"
            
            case qna = "qna"
            
            case rating = "rating"
            
            case review = "review"
            
        }

        public init(active: Bool?, archive: Bool?, media: String?, qna: Bool?, rating: Bool?, review: Bool?) {
            
            self.active = active
            
            self.archive = archive
            
            self.media = media
            
            self.qna = qna
            
            self.rating = rating
            
            self.review = review
            
        }

        public func duplicate() -> FeedbackState {
            let dict = self.dictionary!
            let copy = FeedbackState(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode(String.self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qna = try container.decode(Bool.self, forKey: .qna)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rating = try container.decode(Bool.self, forKey: .rating)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    review = try container.decode(Bool.self, forKey: .review)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(qna, forKey: .qna)
            
            
            
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            
            
            
            try? container.encodeIfPresent(review, forKey: .review)
            
            
        }
        
    }
    
    /*
        Model: GetResponse
        Used By: Feedback
    */

    class GetResponse: Codable {
        
        
        public var data: [String: Any]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case page = "page"
            
        }

        public init(data: [String: Any]?, page: Page?) {
            
            self.data = data
            
            self.page = page
            
        }

        public func duplicate() -> GetResponse {
            let dict = self.dictionary!
            let copy = GetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: GetReviewResponse
        Used By: Feedback
    */

    class GetReviewResponse: Codable {
        
        
        public var facets: [ReviewFacet]?
        
        public var items: [[String: Any]]?
        
        public var page: Page?
        
        public var sort: [SortMethod]?
        

        public enum CodingKeys: String, CodingKey {
            
            case facets = "facets"
            
            case items = "items"
            
            case page = "page"
            
            case sort = "sort"
            
        }

        public init(facets: [ReviewFacet]?, items: [[String: Any]]?, page: Page?, sort: [SortMethod]?) {
            
            self.facets = facets
            
            self.items = items
            
            self.page = page
            
            self.sort = sort
            
        }

        public func duplicate() -> GetReviewResponse {
            let dict = self.dictionary!
            let copy = GetReviewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    facets = try container.decode([ReviewFacet].self, forKey: .facets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([SortMethod].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(facets, forKey: .facets)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
    
    /*
        Model: InsertResponse
        Used By: Feedback
    */

    class InsertResponse: Codable {
        
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
        }

        public init(count: Int?) {
            
            self.count = count
            
        }

        public func duplicate() -> InsertResponse {
            let dict = self.dictionary!
            let copy = InsertResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
    
    /*
        Model: MediaMeta
        Used By: Feedback
    */

    class MediaMeta: Codable {
        
        
        public var maxCount: Int?
        
        public var size: Int?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case maxCount = "max_count"
            
            case size = "size"
            
            case type = "type"
            
        }

        public init(maxCount: Int?, size: Int?, type: String?) {
            
            self.maxCount = maxCount
            
            self.size = size
            
            self.type = type
            
        }

        public func duplicate() -> MediaMeta {
            let dict = self.dictionary!
            let copy = MediaMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maxCount = try container.decode(Int.self, forKey: .maxCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(Int.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maxCount, forKey: .maxCount)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: MediaMetaRequest
        Used By: Feedback
    */

    class MediaMetaRequest: Codable {
        
        
        public var maxCount: Int
        
        public var size: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case maxCount = "max_count"
            
            case size = "size"
            
        }

        public init(maxCount: Int, size: Int) {
            
            self.maxCount = maxCount
            
            self.size = size
            
        }

        public func duplicate() -> MediaMetaRequest {
            let dict = self.dictionary!
            let copy = MediaMetaRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                maxCount = try container.decode(Int.self, forKey: .maxCount)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maxCount, forKey: .maxCount)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
    
    /*
        Model: NumberGetResponse
        Used By: Feedback
    */

    class NumberGetResponse: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [[String: Any]]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> NumberGetResponse {
            let dict = self.dictionary!
            let copy = NumberGetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: PageCursor
        Used By: Feedback
    */

    class PageCursor: Codable {
        
        
        public var current: Int?
        
        public var hasNext: Bool?
        
        public var hasPrevious: Bool?
        
        public var itemTotal: Int?
        
        public var nextId: String?
        
        public var size: Int
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case hasPrevious = "has_previous"
            
            case itemTotal = "item_total"
            
            case nextId = "next_id"
            
            case size = "size"
            
            case type = "type"
            
        }

        public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, itemTotal: Int?, nextId: String?, size: Int, type: String) {
            
            self.current = current
            
            self.hasNext = hasNext
            
            self.hasPrevious = hasPrevious
            
            self.itemTotal = itemTotal
            
            self.nextId = nextId
            
            self.size = size
            
            self.type = type
            
        }

        public func duplicate() -> PageCursor {
            let dict = self.dictionary!
            let copy = PageCursor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    current = try container.decode(Int.self, forKey: .current)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextId = try container.decode(String.self, forKey: .nextId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: PageNumber
        Used By: Feedback
    */

    class PageNumber: Codable {
        
        
        public var current: Int?
        
        public var hasNext: Bool?
        
        public var itemTotal: Int?
        
        public var size: Int?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
            case size = "size"
            
            case type = "type"
            
        }

        public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
            
            self.current = current
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
            self.size = size
            
            self.type = type
            
        }

        public func duplicate() -> PageNumber {
            let dict = self.dictionary!
            let copy = PageNumber(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    current = try container.decode(Int.self, forKey: .current)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(Int.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: Rating
        Used By: Feedback
    */

    class Rating: Codable {
        
        
        public var attributes: [Attribute]?
        
        public var attributesSlugs: [String]?
        
        public var ui: UI?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributes = "attributes"
            
            case attributesSlugs = "attributes_slugs"
            
            case ui = "ui"
            
        }

        public init(attributes: [Attribute]?, attributesSlugs: [String]?, ui: UI?) {
            
            self.attributes = attributes
            
            self.attributesSlugs = attributesSlugs
            
            self.ui = ui
            
        }

        public func duplicate() -> Rating {
            let dict = self.dictionary!
            let copy = Rating(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attributes = try container.decode([Attribute].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributesSlugs = try container.decode([String].self, forKey: .attributesSlugs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ui = try container.decode(UI.self, forKey: .ui)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(attributesSlugs, forKey: .attributesSlugs)
            
            
            
            
            try? container.encodeIfPresent(ui, forKey: .ui)
            
            
        }
        
    }
    
    /*
        Model: RatingRequest
        Used By: Feedback
    */

    class RatingRequest: Codable {
        
        
        public var attributes: [String]
        
        public var ui: UI?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributes = "attributes"
            
            case ui = "ui"
            
        }

        public init(attributes: [String], ui: UI?) {
            
            self.attributes = attributes
            
            self.ui = ui
            
        }

        public func duplicate() -> RatingRequest {
            let dict = self.dictionary!
            let copy = RatingRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                attributes = try container.decode([String].self, forKey: .attributes)
                
            
            
            
                do {
                    ui = try container.decode(UI.self, forKey: .ui)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(ui, forKey: .ui)
            
            
        }
        
    }
    
    /*
        Model: ReportAbuseRequest
        Used By: Feedback
    */

    class ReportAbuseRequest: Codable {
        
        
        public var description: String?
        
        public var entityId: String
        
        public var entityType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
        }

        public init(description: String?, entityId: String, entityType: String) {
            
            self.description = description
            
            self.entityId = entityId
            
            self.entityType = entityType
            
        }

        public func duplicate() -> ReportAbuseRequest {
            let dict = self.dictionary!
            let copy = ReportAbuseRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                entityId = try container.decode(String.self, forKey: .entityId)
                
            
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
        }
        
    }
    
    /*
        Model: Review
        Used By: Feedback
    */

    class Review: Codable {
        
        
        public var description: String?
        
        public var header: String?
        
        public var imageMeta: MediaMeta?
        
        public var title: String?
        
        public var videoMeta: MediaMeta?
        
        public var voteAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case header = "header"
            
            case imageMeta = "image_meta"
            
            case title = "title"
            
            case videoMeta = "video_meta"
            
            case voteAllowed = "vote_allowed"
            
        }

        public init(description: String?, header: String?, imageMeta: MediaMeta?, title: String?, videoMeta: MediaMeta?, voteAllowed: Bool?) {
            
            self.description = description
            
            self.header = header
            
            self.imageMeta = imageMeta
            
            self.title = title
            
            self.videoMeta = videoMeta
            
            self.voteAllowed = voteAllowed
            
        }

        public func duplicate() -> Review {
            let dict = self.dictionary!
            let copy = Review(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    header = try container.decode(String.self, forKey: .header)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imageMeta = try container.decode(MediaMeta.self, forKey: .imageMeta)
                
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
                    videoMeta = try container.decode(MediaMeta.self, forKey: .videoMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    voteAllowed = try container.decode(Bool.self, forKey: .voteAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(header, forKey: .header)
            
            
            
            
            try? container.encodeIfPresent(imageMeta, forKey: .imageMeta)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(videoMeta, forKey: .videoMeta)
            
            
            
            
            try? container.encodeIfPresent(voteAllowed, forKey: .voteAllowed)
            
            
        }
        
    }
    
    /*
        Model: ReviewFacet
        Used By: Feedback
    */

    class ReviewFacet: Codable {
        
        
        public var display: String?
        
        public var name: String?
        
        public var selected: Bool?
        
        public var slug: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case name = "name"
            
            case selected = "selected"
            
            case slug = "slug"
            
            case type = "type"
            
        }

        public init(display: String?, name: String?, selected: Bool?, slug: String?, type: String?) {
            
            self.display = display
            
            self.name = name
            
            self.selected = selected
            
            self.slug = slug
            
            self.type = type
            
        }

        public func duplicate() -> ReviewFacet {
            let dict = self.dictionary!
            let copy = ReviewFacet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
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
                    selected = try container.decode(Bool.self, forKey: .selected)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(selected, forKey: .selected)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: ReviewRequest
        Used By: Feedback
    */

    class ReviewRequest: Codable {
        
        
        public var description: String
        
        public var header: String
        
        public var imageMeta: MediaMetaRequest
        
        public var isVoteAllowed: Bool
        
        public var title: String
        
        public var videoMeta: MediaMetaRequest
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case header = "header"
            
            case imageMeta = "image_meta"
            
            case isVoteAllowed = "is_vote_allowed"
            
            case title = "title"
            
            case videoMeta = "video_meta"
            
        }

        public init(description: String, header: String, imageMeta: MediaMetaRequest, isVoteAllowed: Bool, title: String, videoMeta: MediaMetaRequest) {
            
            self.description = description
            
            self.header = header
            
            self.imageMeta = imageMeta
            
            self.isVoteAllowed = isVoteAllowed
            
            self.title = title
            
            self.videoMeta = videoMeta
            
        }

        public func duplicate() -> ReviewRequest {
            let dict = self.dictionary!
            let copy = ReviewRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                header = try container.decode(String.self, forKey: .header)
                
            
            
            
                imageMeta = try container.decode(MediaMetaRequest.self, forKey: .imageMeta)
                
            
            
            
                isVoteAllowed = try container.decode(Bool.self, forKey: .isVoteAllowed)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                videoMeta = try container.decode(MediaMetaRequest.self, forKey: .videoMeta)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(header, forKey: .header)
            
            
            
            
            try? container.encodeIfPresent(imageMeta, forKey: .imageMeta)
            
            
            
            
            try? container.encodeIfPresent(isVoteAllowed, forKey: .isVoteAllowed)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(videoMeta, forKey: .videoMeta)
            
            
        }
        
    }
    
    /*
        Model: SaveAttributeRequest
        Used By: Feedback
    */

    class SaveAttributeRequest: Codable {
        
        
        public var description: String?
        
        public var name: String
        
        public var slug: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
        }

        public init(description: String?, name: String, slug: String) {
            
            self.description = description
            
            self.name = name
            
            self.slug = slug
            
        }

        public func duplicate() -> SaveAttributeRequest {
            let dict = self.dictionary!
            let copy = SaveAttributeRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
    
    /*
        Model: SortMethod
        Used By: Feedback
    */

    class SortMethod: Codable {
        
        
        public var name: String?
        
        public var selected: Bool?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case selected = "selected"
            
            case type = "type"
            
        }

        public init(name: String?, selected: Bool?, type: String?) {
            
            self.name = name
            
            self.selected = selected
            
            self.type = type
            
        }

        public func duplicate() -> SortMethod {
            let dict = self.dictionary!
            let copy = SortMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selected = try container.decode(Bool.self, forKey: .selected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(selected, forKey: .selected)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: TagMeta
        Used By: Feedback
    */

    class TagMeta: Codable {
        
        
        public var media: [MediaMeta]?
        
        public var name: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case media = "media"
            
            case name = "name"
            
            case type = "type"
            
        }

        public init(media: [MediaMeta]?, name: String?, type: String?) {
            
            self.media = media
            
            self.name = name
            
            self.type = type
            
        }

        public func duplicate() -> TagMeta {
            let dict = self.dictionary!
            let copy = TagMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    media = try container.decode([MediaMeta].self, forKey: .media)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: Template
        Used By: Feedback
    */

    class Template: Codable {
        
        
        public var dateMeta: DateMeta?
        
        public var entity: Entity?
        
        public var id: String?
        
        public var name: String?
        
        public var rating: Rating?
        
        public var review: Review?
        
        public var state: FeedbackState?
        
        public var tags: [TagMeta]?
        

        public enum CodingKeys: String, CodingKey {
            
            case dateMeta = "date_meta"
            
            case entity = "entity"
            
            case id = "id"
            
            case name = "name"
            
            case rating = "rating"
            
            case review = "review"
            
            case state = "state"
            
            case tags = "tags"
            
        }

        public init(dateMeta: DateMeta?, entity: Entity?, id: String?, name: String?, rating: Rating?, review: Review?, state: FeedbackState?, tags: [TagMeta]?) {
            
            self.dateMeta = dateMeta
            
            self.entity = entity
            
            self.id = id
            
            self.name = name
            
            self.rating = rating
            
            self.review = review
            
            self.state = state
            
            self.tags = tags
            
        }

        public func duplicate() -> Template {
            let dict = self.dictionary!
            let copy = Template(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entity = try container.decode(Entity.self, forKey: .entity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                    rating = try container.decode(Rating.self, forKey: .rating)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    review = try container.decode(Review.self, forKey: .review)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(FeedbackState.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([TagMeta].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            
            
            
            try? container.encodeIfPresent(review, forKey: .review)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
    
    /*
        Model: TemplateGetResponse
        Used By: Feedback
    */

    class TemplateGetResponse: Codable {
        
        
        public var items: [Template]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [Template]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> TemplateGetResponse {
            let dict = self.dictionary!
            let copy = TemplateGetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([Template].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: TemplateRequest
        Used By: Feedback
    */

    class TemplateRequest: Codable {
        
        
        public var active: Bool
        
        public var enableMediaType: String?
        
        public var enableQna: Bool?
        
        public var enableRating: Bool
        
        public var enableReview: Bool
        
        public var entity: EntityRequest
        
        public var rating: RatingRequest
        
        public var review: ReviewRequest
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case enableMediaType = "enable_media_type"
            
            case enableQna = "enable_qna"
            
            case enableRating = "enable_rating"
            
            case enableReview = "enable_review"
            
            case entity = "entity"
            
            case rating = "rating"
            
            case review = "review"
            
        }

        public init(active: Bool, enableMediaType: String?, enableQna: Bool?, enableRating: Bool, enableReview: Bool, entity: EntityRequest, rating: RatingRequest, review: ReviewRequest) {
            
            self.active = active
            
            self.enableMediaType = enableMediaType
            
            self.enableQna = enableQna
            
            self.enableRating = enableRating
            
            self.enableReview = enableReview
            
            self.entity = entity
            
            self.rating = rating
            
            self.review = review
            
        }

        public func duplicate() -> TemplateRequest {
            let dict = self.dictionary!
            let copy = TemplateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                active = try container.decode(Bool.self, forKey: .active)
                
            
            
            
                do {
                    enableMediaType = try container.decode(String.self, forKey: .enableMediaType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableQna = try container.decode(Bool.self, forKey: .enableQna)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                enableRating = try container.decode(Bool.self, forKey: .enableRating)
                
            
            
            
                enableReview = try container.decode(Bool.self, forKey: .enableReview)
                
            
            
            
                entity = try container.decode(EntityRequest.self, forKey: .entity)
                
            
            
            
                rating = try container.decode(RatingRequest.self, forKey: .rating)
                
            
            
            
                review = try container.decode(ReviewRequest.self, forKey: .review)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(enableMediaType, forKey: .enableMediaType)
            
            
            
            
            try? container.encodeIfPresent(enableQna, forKey: .enableQna)
            
            
            
            
            try? container.encodeIfPresent(enableRating, forKey: .enableRating)
            
            
            
            
            try? container.encodeIfPresent(enableReview, forKey: .enableReview)
            
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
            
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            
            
            
            try? container.encodeIfPresent(review, forKey: .review)
            
            
        }
        
    }
    
    /*
        Model: TemplateRequestList
        Used By: Feedback
    */

    class TemplateRequestList: Codable {
        
        
        public var templateList: [TemplateRequest]
        

        public enum CodingKeys: String, CodingKey {
            
            case templateList = "template_list"
            
        }

        public init(templateList: [TemplateRequest]) {
            
            self.templateList = templateList
            
        }

        public func duplicate() -> TemplateRequestList {
            let dict = self.dictionary!
            let copy = TemplateRequestList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                templateList = try container.decode([TemplateRequest].self, forKey: .templateList)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateList, forKey: .templateList)
            
            
        }
        
    }
    
    /*
        Model: UI
        Used By: Feedback
    */

    class UI: Codable {
        
        
        public var feedbackQuestion: [String]?
        
        public var icon: UIIcon?
        
        public var text: [String]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case feedbackQuestion = "feedback_question"
            
            case icon = "icon"
            
            case text = "text"
            
            case type = "type"
            
        }

        public init(feedbackQuestion: [String]?, icon: UIIcon?, text: [String]?, type: String?) {
            
            self.feedbackQuestion = feedbackQuestion
            
            self.icon = icon
            
            self.text = text
            
            self.type = type
            
        }

        public func duplicate() -> UI {
            let dict = self.dictionary!
            let copy = UI(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    feedbackQuestion = try container.decode([String].self, forKey: .feedbackQuestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    icon = try container.decode(UIIcon.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode([String].self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(feedbackQuestion, forKey: .feedbackQuestion)
            
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: UIIcon
        Used By: Feedback
    */

    class UIIcon: Codable {
        
        
        public var active: String?
        
        public var inactive: String?
        
        public var selected: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case inactive = "inactive"
            
            case selected = "selected"
            
        }

        public init(active: String?, inactive: String?, selected: [String]?) {
            
            self.active = active
            
            self.inactive = inactive
            
            self.selected = selected
            
        }

        public func duplicate() -> UIIcon {
            let dict = self.dictionary!
            let copy = UIIcon(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    active = try container.decode(String.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    inactive = try container.decode(String.self, forKey: .inactive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selected = try container.decode([String].self, forKey: .selected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(inactive, forKey: .inactive)
            
            
            
            
            try? container.encodeIfPresent(selected, forKey: .selected)
            
            
        }
        
    }
    
    /*
        Model: UpdateAttributeRequest
        Used By: Feedback
    */

    class UpdateAttributeRequest: Codable {
        
        
        public var description: String?
        
        public var name: String
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
        }

        public init(description: String?, name: String, slug: String?) {
            
            self.description = description
            
            self.name = name
            
            self.slug = slug
            
        }

        public func duplicate() -> UpdateAttributeRequest {
            let dict = self.dictionary!
            let copy = UpdateAttributeRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
    
    /*
        Model: UpdateResponse
        Used By: Feedback
    */

    class UpdateResponse: Codable {
        
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
        }

        public init(count: Int?) {
            
            self.count = count
            
        }

        public func duplicate() -> UpdateResponse {
            let dict = self.dictionary!
            let copy = UpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
    
    /*
        Model: UpdateReviewRequest
        Used By: Feedback
    */

    class UpdateReviewRequest: Codable {
        
        
        public var active: Bool?
        
        public var application: String?
        
        public var approve: Bool?
        
        public var archive: Bool?
        
        public var attributesRating: [AttributeObject]?
        
        public var description: String?
        
        public var deviceMeta: DeviceMeta?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaResource: [MediaMeta]?
        
        public var rating: Double?
        
        public var reviewId: String?
        
        public var templateId: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case application = "application"
            
            case approve = "approve"
            
            case archive = "archive"
            
            case attributesRating = "attributes_rating"
            
            case description = "description"
            
            case deviceMeta = "device_meta"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaResource = "media_resource"
            
            case rating = "rating"
            
            case reviewId = "review_id"
            
            case templateId = "template_id"
            
            case title = "title"
            
        }

        public init(active: Bool?, application: String?, approve: Bool?, archive: Bool?, attributesRating: [AttributeObject]?, description: String?, deviceMeta: DeviceMeta?, entityId: String?, entityType: String?, mediaResource: [MediaMeta]?, rating: Double?, reviewId: String?, templateId: String?, title: String?) {
            
            self.active = active
            
            self.application = application
            
            self.approve = approve
            
            self.archive = archive
            
            self.attributesRating = attributesRating
            
            self.description = description
            
            self.deviceMeta = deviceMeta
            
            self.entityId = entityId
            
            self.entityType = entityType
            
            self.mediaResource = mediaResource
            
            self.rating = rating
            
            self.reviewId = reviewId
            
            self.templateId = templateId
            
            self.title = title
            
        }

        public func duplicate() -> UpdateReviewRequest {
            let dict = self.dictionary!
            let copy = UpdateReviewRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
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
                    approve = try container.decode(Bool.self, forKey: .approve)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributesRating = try container.decode([AttributeObject].self, forKey: .attributesRating)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceMeta = try container.decode(DeviceMeta.self, forKey: .deviceMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mediaResource = try container.decode([MediaMeta].self, forKey: .mediaResource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rating = try container.decode(Double.self, forKey: .rating)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewId = try container.decode(String.self, forKey: .reviewId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateId = try container.decode(String.self, forKey: .templateId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
            
            
            try? container.encodeIfPresent(attributesRating, forKey: .attributesRating)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(deviceMeta, forKey: .deviceMeta)
            
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(mediaResource, forKey: .mediaResource)
            
            
            
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            
            
            
            try? container.encodeIfPresent(reviewId, forKey: .reviewId)
            
            
            
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
    
    /*
        Model: UpdateTemplateRequest
        Used By: Feedback
    */

    class UpdateTemplateRequest: Codable {
        
        
        public var active: Bool
        
        public var enableMediaType: String?
        
        public var enableQna: Bool?
        
        public var enableRating: Bool
        
        public var enableReview: Bool
        
        public var entity: EntityRequest
        
        public var rating: RatingRequest
        
        public var review: ReviewRequest
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case enableMediaType = "enable_media_type"
            
            case enableQna = "enable_qna"
            
            case enableRating = "enable_rating"
            
            case enableReview = "enable_review"
            
            case entity = "entity"
            
            case rating = "rating"
            
            case review = "review"
            
        }

        public init(active: Bool, enableMediaType: String?, enableQna: Bool?, enableRating: Bool, enableReview: Bool, entity: EntityRequest, rating: RatingRequest, review: ReviewRequest) {
            
            self.active = active
            
            self.enableMediaType = enableMediaType
            
            self.enableQna = enableQna
            
            self.enableRating = enableRating
            
            self.enableReview = enableReview
            
            self.entity = entity
            
            self.rating = rating
            
            self.review = review
            
        }

        public func duplicate() -> UpdateTemplateRequest {
            let dict = self.dictionary!
            let copy = UpdateTemplateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                active = try container.decode(Bool.self, forKey: .active)
                
            
            
            
                do {
                    enableMediaType = try container.decode(String.self, forKey: .enableMediaType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableQna = try container.decode(Bool.self, forKey: .enableQna)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                enableRating = try container.decode(Bool.self, forKey: .enableRating)
                
            
            
            
                enableReview = try container.decode(Bool.self, forKey: .enableReview)
                
            
            
            
                entity = try container.decode(EntityRequest.self, forKey: .entity)
                
            
            
            
                rating = try container.decode(RatingRequest.self, forKey: .rating)
                
            
            
            
                review = try container.decode(ReviewRequest.self, forKey: .review)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(enableMediaType, forKey: .enableMediaType)
            
            
            
            
            try? container.encodeIfPresent(enableQna, forKey: .enableQna)
            
            
            
            
            try? container.encodeIfPresent(enableRating, forKey: .enableRating)
            
            
            
            
            try? container.encodeIfPresent(enableReview, forKey: .enableReview)
            
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
            
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            
            
            
            try? container.encodeIfPresent(review, forKey: .review)
            
            
        }
        
    }
    
    /*
        Model: UpdateTemplateStatusRequest
        Used By: Feedback
    */

    class UpdateTemplateStatusRequest: Codable {
        
        
        public var active: Bool?
        
        public var archive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case archive = "archive"
            
        }

        public init(active: Bool?, archive: Bool?) {
            
            self.active = active
            
            self.archive = archive
            
        }

        public func duplicate() -> UpdateTemplateStatusRequest {
            let dict = self.dictionary!
            let copy = UpdateTemplateStatusRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
        }
        
    }
    
}
