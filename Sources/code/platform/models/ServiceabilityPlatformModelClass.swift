import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationServiceabilityConfig
         Used By: Serviceability
     */

    class ApplicationServiceabilityConfig: Codable {
        public var channelId: String

        public var serviceabilityType: String

        public var channelType: String

        public enum CodingKeys: String, CodingKey {
            case channelId = "channel_id"

            case serviceabilityType = "serviceability_type"

            case channelType = "channel_type"
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            self.channelId = channelId

            self.serviceabilityType = serviceabilityType

            self.channelType = channelType
        }

        public func duplicate() -> ApplicationServiceabilityConfig {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            channelId = try container.decode(String.self, forKey: .channelId)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)

            channelType = try container.decode(String.self, forKey: .channelType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channelId, forKey: .channelId)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)

            try? container.encodeIfPresent(channelType, forKey: .channelType)
        }
    }

    /*
         Model: ServiceabilityrErrorResponse
         Used By: Serviceability
     */

    class ServiceabilityrErrorResponse: Codable {
        public var type: String

        public var message: String

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case type

            case message

            case value
        }

        public init(message: String, type: String, value: String) {
            self.type = type

            self.message = message

            self.value = value
        }

        public func duplicate() -> ServiceabilityrErrorResponse {
            let dict = self.dictionary!
            let copy = ServiceabilityrErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: ApplicationServiceabilityConfigResponse
         Used By: Serviceability
     */

    class ApplicationServiceabilityConfigResponse: Codable {
        public var success: Bool

        public var data: ApplicationServiceabilityConfig?

        public var error: ServiceabilityrErrorResponse?

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case error
        }

        public init(data: ApplicationServiceabilityConfig?, error: ServiceabilityrErrorResponse?, success: Bool) {
            self.success = success

            self.data = data

            self.error = error
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
                data = try container.decode(ApplicationServiceabilityConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(ServiceabilityrErrorResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }

    /*
         Model: EntityRegionView_Request
         Used By: Serviceability
     */

    class EntityRegionView_Request: Codable {
        public var subType: [String]

        public var parentId: [String]?

        public enum CodingKeys: String, CodingKey {
            case subType = "sub_type"

            case parentId = "parent_id"
        }

        public init(parentId: [String]?, subType: [String]) {
            self.subType = subType

            self.parentId = parentId
        }

        public func duplicate() -> EntityRegionView_Request {
            let dict = self.dictionary!
            let copy = EntityRegionView_Request(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subType = try container.decode([String].self, forKey: .subType)

            do {
                parentId = try container.decode([String].self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(parentId, forKey: .parentId)
        }
    }

    /*
         Model: EntityRegionView_Items
         Used By: Serviceability
     */

    class EntityRegionView_Items: Codable {
        public var subType: String

        public var name: String

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case subType = "sub_type"

            case name

            case uid
        }

        public init(name: String, subType: String, uid: String) {
            self.subType = subType

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> EntityRegionView_Items {
            let dict = self.dictionary!
            let copy = EntityRegionView_Items(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subType = try container.decode(String.self, forKey: .subType)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: EntityRegionView_page
         Used By: Serviceability
     */

    class EntityRegionView_page: Codable {
        public var itemTotal: Int

        public var current: Int

        public var type: String

        public var size: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case current

            case type

            case size

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.current = current

            self.type = type

            self.size = size

            self.hasNext = hasNext
        }

        public func duplicate() -> EntityRegionView_page {
            let dict = self.dictionary!
            let copy = EntityRegionView_page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }

    /*
         Model: EntityRegionView_Error
         Used By: Serviceability
     */

    class EntityRegionView_Error: Codable {
        public var type: String?

        public var message: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case message

            case value
        }

        public init(message: String?, type: String?, value: String?) {
            self.type = type

            self.message = message

            self.value = value
        }

        public func duplicate() -> EntityRegionView_Error {
            let dict = self.dictionary!
            let copy = EntityRegionView_Error(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: EntityRegionView_Response
         Used By: Serviceability
     */

    class EntityRegionView_Response: Codable {
        public var success: Bool

        public var data: [EntityRegionView_Items]

        public var page: EntityRegionView_page

        public var error: EntityRegionView_Error

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case page

            case error
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.success = success

            self.data = data

            self.page = page

            self.error = error
        }

        public func duplicate() -> EntityRegionView_Response {
            let dict = self.dictionary!
            let copy = EntityRegionView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }

    /*
         Model: ListViewProduct
         Used By: Serviceability
     */

    class ListViewProduct: Codable {
        public var type: String

        public var count: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case count
        }

        public init(count: Int, type: String) {
            self.type = type

            self.count = count
        }

        public func duplicate() -> ListViewProduct {
            let dict = self.dictionary!
            let copy = ListViewProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            count = try container.decode(Int.self, forKey: .count)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(count, forKey: .count)
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
        public var isActive: Bool

        public var product: ListViewProduct

        public var companyId: Int

        public var slug: String

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var zoneId: String

        public var name: String

        public var storesCount: Int

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case product

            case companyId = "company_id"

            case slug

            case channels

            case pincodesCount = "pincodes_count"

            case zoneId = "zone_id"

            case name

            case storesCount = "stores_count"
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.isActive = isActive

            self.product = product

            self.companyId = companyId

            self.slug = slug

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.zoneId = zoneId

            self.name = name

            self.storesCount = storesCount
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            storesCount = try container.decode(Int.self, forKey: .storesCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
        }
    }

    /*
         Model: ZoneDataItem
         Used By: Serviceability
     */

    class ZoneDataItem: Codable {
        public var itemTotal: Int

        public var current: Int

        public var type: String

        public var size: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case current

            case type

            case size

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.current = current

            self.type = type

            self.size = size

            self.hasNext = hasNext
        }

        public func duplicate() -> ZoneDataItem {
            let dict = self.dictionary!
            let copy = ZoneDataItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }

    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalActiveZones: Int

        public var totalPincodesServed: Int

        public var totalZones: Int

        public enum CodingKeys: String, CodingKey {
            case totalActiveZones = "total_active_zones"

            case totalPincodesServed = "total_pincodes_served"

            case totalZones = "total_zones"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalActiveZones = totalActiveZones

            self.totalPincodesServed = totalPincodesServed

            self.totalZones = totalZones
        }

        public func duplicate() -> ListViewSummary {
            let dict = self.dictionary!
            let copy = ListViewSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)

            totalZones = try container.decode(Int.self, forKey: .totalZones)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
        }
    }

    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var items: [ListViewItems]

        public var page: [ZoneDataItem]

        public var summary: [ListViewSummary]

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case summary
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.items = items

            self.page = page

            self.summary = summary
        }

        public func duplicate() -> ListViewResponse {
            let dict = self.dictionary!
            let copy = ListViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([ListViewItems].self, forKey: .items)

            page = try container.decode([ZoneDataItem].self, forKey: .page)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(summary, forKey: .summary)
        }
    }

    /*
         Model: CompanyStoreView_PageItems
         Used By: Serviceability
     */

    class CompanyStoreView_PageItems: Codable {
        public var itemTotal: Int

        public var current: Int

        public var type: String

        public var size: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case current

            case type

            case size

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.current = current

            self.type = type

            self.size = size

            self.hasNext = hasNext
        }

        public func duplicate() -> CompanyStoreView_PageItems {
            let dict = self.dictionary!
            let copy = CompanyStoreView_PageItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }

    /*
         Model: CompanyStoreView_Response
         Used By: Serviceability
     */

    class CompanyStoreView_Response: Codable {
        public var items: [[String: Any]]?

        public var page: [CompanyStoreView_PageItems]

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [[String: Any]]?, page: [CompanyStoreView_PageItems]) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> CompanyStoreView_Response {
            let dict = self.dictionary!
            let copy = CompanyStoreView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ZoneProductTypes
         Used By: Serviceability
     */

    class ZoneProductTypes: Codable {
        public var type: String

        public var tags: [String]

        public enum CodingKeys: String, CodingKey {
            case type

            case tags
        }

        public init(tags: [String], type: String) {
            self.type = type

            self.tags = tags
        }

        public func duplicate() -> ZoneProductTypes {
            let dict = self.dictionary!
            let copy = ZoneProductTypes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            tags = try container.decode([String].self, forKey: .tags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)
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
         Model: ZoneMappingType
         Used By: Serviceability
     */

    class ZoneMappingType: Codable {
        public var pincode: [String]?

        public var state: [String]?

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case state

            case country
        }

        public init(country: String, pincode: [String]?, state: [String]?) {
            self.pincode = pincode

            self.state = state

            self.country = country
        }

        public func duplicate() -> ZoneMappingType {
            let dict = self.dictionary!
            let copy = ZoneMappingType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode([String].self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode([String].self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }

    /*
         Model: UpdateZoneData
         Used By: Serviceability
     */

    class UpdateZoneData: Codable {
        public var isActive: Bool

        public var product: ZoneProductTypes

        public var storeIds: [Int]

        public var companyId: Int

        public var slug: String

        public var regionType: String

        public var channels: [GetZoneDataViewChannels]

        public var zoneId: String

        public var name: String

        public var mapping: [ZoneMappingType]

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case product

            case storeIds = "store_ids"

            case companyId = "company_id"

            case slug

            case regionType = "region_type"

            case channels

            case zoneId = "zone_id"

            case name

            case mapping
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int], zoneId: String) {
            self.isActive = isActive

            self.product = product

            self.storeIds = storeIds

            self.companyId = companyId

            self.slug = slug

            self.regionType = regionType

            self.channels = channels

            self.zoneId = zoneId

            self.name = name

            self.mapping = mapping
        }

        public func duplicate() -> UpdateZoneData {
            let dict = self.dictionary!
            let copy = UpdateZoneData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            regionType = try container.decode(String.self, forKey: .regionType)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            name = try container.decode(String.self, forKey: .name)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mapping, forKey: .mapping)
        }
    }

    /*
         Model: ZoneUpdateRequest
         Used By: Serviceability
     */

    class ZoneUpdateRequest: Codable {
        public var data: UpdateZoneData

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case data

            case identifier
        }

        public init(data: UpdateZoneData, identifier: String) {
            self.data = data

            self.identifier = identifier
        }

        public func duplicate() -> ZoneUpdateRequest {
            let dict = self.dictionary!
            let copy = ZoneUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(UpdateZoneData.self, forKey: .data)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

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
            case success

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
         Model: GetZoneDataViewItems
         Used By: Serviceability
     */

    class GetZoneDataViewItems: Codable {
        public var isActive: Bool

        public var product: ZoneProductTypes

        public var storeIds: [Int]

        public var companyId: Int

        public var slug: String

        public var regionType: String

        public var channels: [GetZoneDataViewChannels]

        public var pincodesCount: Int

        public var zoneId: String

        public var storesCount: Int

        public var name: String

        public var mapping: [ZoneMappingType]

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case product

            case storeIds = "store_ids"

            case companyId = "company_id"

            case slug

            case regionType = "region_type"

            case channels

            case pincodesCount = "pincodes_count"

            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case name

            case mapping
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, pincodesCount: Int, product: ZoneProductTypes, regionType: String, slug: String, storesCount: Int, storeIds: [Int], zoneId: String) {
            self.isActive = isActive

            self.product = product

            self.storeIds = storeIds

            self.companyId = companyId

            self.slug = slug

            self.regionType = regionType

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.zoneId = zoneId

            self.storesCount = storesCount

            self.name = name

            self.mapping = mapping
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            regionType = try container.decode(String.self, forKey: .regionType)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            name = try container.decode(String.self, forKey: .name)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mapping, forKey: .mapping)
        }
    }

    /*
         Model: GetSingleZoneDataViewResponse
         Used By: Serviceability
     */

    class GetSingleZoneDataViewResponse: Codable {
        public var data: GetZoneDataViewItems

        public enum CodingKeys: String, CodingKey {
            case data
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
         Model: CreateZoneData
         Used By: Serviceability
     */

    class CreateZoneData: Codable {
        public var isActive: Bool

        public var product: ZoneProductTypes

        public var storeIds: [Int]

        public var companyId: Int

        public var slug: String

        public var regionType: String

        public var channels: [GetZoneDataViewChannels]

        public var name: String

        public var mapping: [ZoneMappingType]

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case product

            case storeIds = "store_ids"

            case companyId = "company_id"

            case slug

            case regionType = "region_type"

            case channels

            case name

            case mapping
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int]) {
            self.isActive = isActive

            self.product = product

            self.storeIds = storeIds

            self.companyId = companyId

            self.slug = slug

            self.regionType = regionType

            self.channels = channels

            self.name = name

            self.mapping = mapping
        }

        public func duplicate() -> CreateZoneData {
            let dict = self.dictionary!
            let copy = CreateZoneData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            slug = try container.decode(String.self, forKey: .slug)

            regionType = try container.decode(String.self, forKey: .regionType)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            name = try container.decode(String.self, forKey: .name)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mapping, forKey: .mapping)
        }
    }

    /*
         Model: ZoneRequest
         Used By: Serviceability
     */

    class ZoneRequest: Codable {
        public var data: CreateZoneData

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case data

            case identifier
        }

        public init(data: CreateZoneData, identifier: String) {
            self.data = data

            self.identifier = identifier
        }

        public func duplicate() -> ZoneRequest {
            let dict = self.dictionary!
            let copy = ZoneRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(CreateZoneData.self, forKey: .data)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }

    /*
         Model: ZoneResponse
         Used By: Serviceability
     */

    class ZoneResponse: Codable {
        public var success: Bool

        public var zoneId: String

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case zoneId = "zone_id"

            case statusCode = "status_code"
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            self.success = success

            self.zoneId = zoneId

            self.statusCode = statusCode
        }

        public func duplicate() -> ZoneResponse {
            let dict = self.dictionary!
            let copy = ZoneResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }

    /*
         Model: GetZoneFromPincodeViewRequest
         Used By: Serviceability
     */

    class GetZoneFromPincodeViewRequest: Codable {
        public var country: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case country

            case pincode
        }

        public init(country: String, pincode: String) {
            self.country = country

            self.pincode = pincode
        }

        public func duplicate() -> GetZoneFromPincodeViewRequest {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
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

            case zones
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
