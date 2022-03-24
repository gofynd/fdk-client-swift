import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: ServiceabilityrErrorResponse
        Used By: Serviceability
    */

    class ServiceabilityrErrorResponse: Codable {
        
        
        public var value: String
        
        public var message: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case message = "message"
            
            case type = "type"
            
        }

        public init(message: String, type: String, value: String) {
            
            self.value = value
            
            self.message = message
            
            self.type = type
            
        }

        public func duplicate() -> ServiceabilityrErrorResponse {
            let dict = self.dictionary!
            let copy = ServiceabilityrErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: ApplicationServiceabilityConfig
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfig: Codable {
        
        
        public var serviceabilityType: String
        
        public var channelId: String
        
        public var channelType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case channelId = "channel_id"
            
            case channelType = "channel_type"
            
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            
            self.serviceabilityType = serviceabilityType
            
            self.channelId = channelId
            
            self.channelType = channelType
            
        }

        public func duplicate() -> ApplicationServiceabilityConfig {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
        }
        
    }
    
    /*
        Model: ApplicationServiceabilityConfigResponse
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfigResponse: Codable {
        
        
        public var success: Bool
        
        public var error: ServiceabilityrErrorResponse?
        
        public var data: ApplicationServiceabilityConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
            case data = "data"
            
        }

        public init(data: ApplicationServiceabilityConfig?, error: ServiceabilityrErrorResponse?, success: Bool) {
            
            self.success = success
            
            self.error = error
            
            self.data = data
            
        }

        public func duplicate() -> ApplicationServiceabilityConfigResponse {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(ServiceabilityrErrorResponse.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(ApplicationServiceabilityConfig.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Request
        Used By: Serviceability
    */

    class EntityRegionView_Request: Codable {
        
        
        public var parentId: [String]?
        
        public var subType: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case parentId = "parent_id"
            
            case subType = "sub_type"
            
        }

        public init(parentId: [String]?, subType: [String]) {
            
            self.parentId = parentId
            
            self.subType = subType
            
        }

        public func duplicate() -> EntityRegionView_Request {
            let dict = self.dictionary!
            let copy = EntityRegionView_Request(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    parentId = try container.decode([String].self, forKey: .parentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                subType = try container.decode([String].self, forKey: .subType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_page
        Used By: Serviceability
    */

    class EntityRegionView_page: Codable {
        
        
        public var current: Int
        
        public var type: String
        
        public var hasNext: Bool
        
        public var size: Int
        
        public var itemTotal: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case type = "type"
            
            case hasNext = "has_next"
            
            case size = "size"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.current = current
            
            self.type = type
            
            self.hasNext = hasNext
            
            self.size = size
            
            self.itemTotal = itemTotal
            
        }

        public func duplicate() -> EntityRegionView_page {
            let dict = self.dictionary!
            let copy = EntityRegionView_page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Error
        Used By: Serviceability
    */

    class EntityRegionView_Error: Codable {
        
        
        public var value: String?
        
        public var message: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case message = "message"
            
            case type = "type"
            
        }

        public init(message: String?, type: String?, value: String?) {
            
            self.value = value
            
            self.message = message
            
            self.type = type
            
        }

        public func duplicate() -> EntityRegionView_Error {
            let dict = self.dictionary!
            let copy = EntityRegionView_Error(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Items
        Used By: Serviceability
    */

    class EntityRegionView_Items: Codable {
        
        
        public var subType: String
        
        public var uid: String
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case subType = "sub_type"
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(name: String, subType: String, uid: String) {
            
            self.subType = subType
            
            self.uid = uid
            
            self.name = name
            
        }

        public func duplicate() -> EntityRegionView_Items {
            let dict = self.dictionary!
            let copy = EntityRegionView_Items(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subType = try container.decode(String.self, forKey: .subType)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Response
        Used By: Serviceability
    */

    class EntityRegionView_Response: Codable {
        
        
        public var page: EntityRegionView_page
        
        public var success: Bool
        
        public var error: EntityRegionView_Error
        
        public var data: [EntityRegionView_Items]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case success = "success"
            
            case error = "error"
            
            case data = "data"
            
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            
            self.page = page
            
            self.success = success
            
            self.error = error
            
            self.data = data
            
        }

        public func duplicate() -> EntityRegionView_Response {
            let dict = self.dictionary!
            let copy = EntityRegionView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(EntityRegionView_page.self, forKey: .page)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                error = try container.decode(EntityRegionView_Error.self, forKey: .error)
                
            
            
            
                data = try container.decode([EntityRegionView_Items].self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
    /*
        Model: ListViewSummary
        Used By: Serviceability
    */

    class ListViewSummary: Codable {
        
        
        public var totalZones: Int
        
        public var totalPincodesServed: Int
        
        public var totalActiveZones: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case totalZones = "total_zones"
            
            case totalPincodesServed = "total_pincodes_served"
            
            case totalActiveZones = "total_active_zones"
            
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            
            self.totalZones = totalZones
            
            self.totalPincodesServed = totalPincodesServed
            
            self.totalActiveZones = totalActiveZones
            
        }

        public func duplicate() -> ListViewSummary {
            let dict = self.dictionary!
            let copy = ListViewSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalZones = try container.decode(Int.self, forKey: .totalZones)
                
            
            
            
                totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
                
            
            
            
                totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
            
            
            
            
            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
            
            
            
            
            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)
            
            
        }
        
    }
    
    /*
        Model: ZoneDataItem
        Used By: Serviceability
    */

    class ZoneDataItem: Codable {
        
        
        public var current: Int
        
        public var type: String
        
        public var hasNext: Bool
        
        public var size: Int
        
        public var itemTotal: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case type = "type"
            
            case hasNext = "has_next"
            
            case size = "size"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.current = current
            
            self.type = type
            
            self.hasNext = hasNext
            
            self.size = size
            
            self.itemTotal = itemTotal
            
        }

        public func duplicate() -> ZoneDataItem {
            let dict = self.dictionary!
            let copy = ZoneDataItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
    
    /*
        Model: ListViewProduct
        Used By: Serviceability
    */

    class ListViewProduct: Codable {
        
        
        public var count: Int
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case type = "type"
            
        }

        public init(count: Int, type: String) {
            
            self.count = count
            
            self.type = type
            
        }

        public func duplicate() -> ListViewProduct {
            let dict = self.dictionary!
            let copy = ListViewProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                count = try container.decode(Int.self, forKey: .count)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: ListViewChannels
        Used By: Serviceability
    */

    class ListViewChannels: Codable {
        
        
        public var channelId: String
        
        public var channelType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case channelType = "channel_type"
            
        }

        public init(channelId: String, channelType: String) {
            
            self.channelId = channelId
            
            self.channelType = channelType
            
        }

        public func duplicate() -> ListViewChannels {
            let dict = self.dictionary!
            let copy = ListViewChannels(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
        }
        
    }
    
    /*
        Model: ListViewItems
        Used By: Serviceability
    */

    class ListViewItems: Codable {
        
        
        public var id: String
        
        public var slug: String
        
        public var isActive: Bool
        
        public var pincodesCount: Int
        
        public var name: String
        
        public var product: ListViewProduct
        
        public var storesCount: Int
        
        public var channels: ListViewChannels
        
        public var companyId: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case slug = "slug"
            
            case isActive = "is_active"
            
            case pincodesCount = "pincodes_count"
            
            case name = "name"
            
            case product = "product"
            
            case storesCount = "stores_count"
            
            case channels = "channels"
            
            case companyId = "company_id"
            
        }

        public init(channels: ListViewChannels, companyId: Int, id: String, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int) {
            
            self.id = id
            
            self.slug = slug
            
            self.isActive = isActive
            
            self.pincodesCount = pincodesCount
            
            self.name = name
            
            self.product = product
            
            self.storesCount = storesCount
            
            self.channels = channels
            
            self.companyId = companyId
            
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                channels = try container.decode(ListViewChannels.self, forKey: .channels)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
    
    /*
        Model: ListViewResponse
        Used By: Serviceability
    */

    class ListViewResponse: Codable {
        
        
        public var summary: [ListViewSummary]
        
        public var page: [ZoneDataItem]
        
        public var items: [ListViewItems]
        

        public enum CodingKeys: String, CodingKey {
            
            case summary = "summary"
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            
            self.summary = summary
            
            self.page = page
            
            self.items = items
            
        }

        public func duplicate() -> ListViewResponse {
            let dict = self.dictionary!
            let copy = ListViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                summary = try container.decode([ListViewSummary].self, forKey: .summary)
                
            
            
            
                page = try container.decode([ZoneDataItem].self, forKey: .page)
                
            
            
            
                items = try container.decode([ListViewItems].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: CompanyStoreView_PageItems
        Used By: Serviceability
    */

    class CompanyStoreView_PageItems: Codable {
        
        
        public var current: Int
        
        public var type: String
        
        public var hasNext: Bool
        
        public var size: Int
        
        public var itemTotal: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case type = "type"
            
            case hasNext = "has_next"
            
            case size = "size"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.current = current
            
            self.type = type
            
            self.hasNext = hasNext
            
            self.size = size
            
            self.itemTotal = itemTotal
            
        }

        public func duplicate() -> CompanyStoreView_PageItems {
            let dict = self.dictionary!
            let copy = CompanyStoreView_PageItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
    
    /*
        Model: CompanyStoreView_Response
        Used By: Serviceability
    */

    class CompanyStoreView_Response: Codable {
        
        
        public var page: [CompanyStoreView_PageItems]
        
        public var items: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [[String: Any]]?, page: [CompanyStoreView_PageItems]) {
            
            self.page = page
            
            self.items = items
            
        }

        public func duplicate() -> CompanyStoreView_Response {
            let dict = self.dictionary!
            let copy = CompanyStoreView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)
                
            
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewProduct
        Used By: Serviceability
    */

    class GetZoneDataViewProduct: Codable {
        
        
        public var count: Int
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case type = "type"
            
        }

        public init(count: Int, type: String) {
            
            self.count = count
            
            self.type = type
            
        }

        public func duplicate() -> GetZoneDataViewProduct {
            let dict = self.dictionary!
            let copy = GetZoneDataViewProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                count = try container.decode(Int.self, forKey: .count)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewChannels
        Used By: Serviceability
    */

    class GetZoneDataViewChannels: Codable {
        
        
        public var channelId: String
        
        public var channelType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case channelType = "channel_type"
            
        }

        public init(channelId: String, channelType: String) {
            
            self.channelId = channelId
            
            self.channelType = channelType
            
        }

        public func duplicate() -> GetZoneDataViewChannels {
            let dict = self.dictionary!
            let copy = GetZoneDataViewChannels(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewItems
        Used By: Serviceability
    */

    class GetZoneDataViewItems: Codable {
        
        
        public var isActive: Bool
        
        public var slug: String
        
        public var zoneId: String
        
        public var pincodesCount: Int
        
        public var name: String
        
        public var product: GetZoneDataViewProduct
        
        public var storesCount: Int
        
        public var channels: GetZoneDataViewChannels
        
        public var companyId: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case zoneId = "zone_id"
            
            case pincodesCount = "pincodes_count"
            
            case name = "name"
            
            case product = "product"
            
            case storesCount = "stores_count"
            
            case channels = "channels"
            
            case companyId = "company_id"
            
        }

        public init(channels: GetZoneDataViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: GetZoneDataViewProduct, slug: String, storesCount: Int, zoneId: String) {
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.zoneId = zoneId
            
            self.pincodesCount = pincodesCount
            
            self.name = name
            
            self.product = product
            
            self.storesCount = storesCount
            
            self.channels = channels
            
            self.companyId = companyId
            
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                product = try container.decode(GetZoneDataViewProduct.self, forKey: .product)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                channels = try container.decode(GetZoneDataViewChannels.self, forKey: .channels)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
    
    /*
        Model: GetSingleZoneDataViewResponse
        Used By: Serviceability
    */

    class GetSingleZoneDataViewResponse: Codable {
        
        
        public var data: GetZoneDataViewItems
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: GetZoneDataViewItems) {
            
            self.data = data
            
        }

        public func duplicate() -> GetSingleZoneDataViewResponse {
            let dict = self.dictionary!
            let copy = GetSingleZoneDataViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode(GetZoneDataViewItems.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
    /*
        Model: ZoneRequest
        Used By: Serviceability
    */

    class ZoneRequest: Codable {
        
        
        public var data: [String: Any]
        
        public var channels: [[String: Any]]
        
        public var identifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case channels = "channels"
            
            case identifier = "identifier"
            
        }

        public init(channels: [[String: Any]], data: [String: Any], identifier: String) {
            
            self.data = data
            
            self.channels = channels
            
            self.identifier = identifier
            
        }

        public func duplicate() -> ZoneRequest {
            let dict = self.dictionary!
            let copy = ZoneRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([String: Any].self, forKey: .data)
                
            
            
            
                channels = try container.decode([[String: Any]].self, forKey: .channels)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
    
    /*
        Model: ZoneSuccessResponse
        Used By: Serviceability
    */

    class ZoneSuccessResponse: Codable {
        
        
        public var success: Bool
        
        public var statusCode: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case statusCode = "status_code"
            
        }

        public init(statusCode: Int, success: Bool) {
            
            self.success = success
            
            self.statusCode = statusCode
            
        }

        public func duplicate() -> ZoneSuccessResponse {
            let dict = self.dictionary!
            let copy = ZoneSuccessResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
        }
        
    }
    
    /*
        Model: ZoneResponse
        Used By: Serviceability
    */

    class ZoneResponse: Codable {
        
        
        public var success: Bool
        
        public var statusCode: Int
        
        public var zoneId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case statusCode = "status_code"
            
            case zoneId = "zone_id"
            
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            
            self.success = success
            
            self.statusCode = statusCode
            
            self.zoneId = zoneId
            
        }

        public func duplicate() -> ZoneResponse {
            let dict = self.dictionary!
            let copy = ZoneResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
    
    /*
        Model: GetZoneFromPincodeViewRequest
        Used By: Serviceability
    */

    class GetZoneFromPincodeViewRequest: Codable {
        
        
        public var pincode: String
        
        public var country: String
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case country = "country"
            
        }

        public init(country: String, pincode: String) {
            
            self.pincode = pincode
            
            self.country = country
            
        }

        public func duplicate() -> GetZoneFromPincodeViewRequest {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
    
    /*
        Model: GetZoneFromPincodeViewResponse
        Used By: Serviceability
    */

    class GetZoneFromPincodeViewResponse: Codable {
        
        
        public var serviceabilityType: String
        
        public var zones: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case zones = "zones"
            
        }

        public init(serviceabilityType: String, zones: [String]) {
            
            self.serviceabilityType = serviceabilityType
            
            self.zones = zones
            
        }

        public func duplicate() -> GetZoneFromPincodeViewResponse {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                zones = try container.decode([String].self, forKey: .zones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
    
}
