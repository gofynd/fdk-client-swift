

import Foundation

public extension PlatformClient.Partner {
    /*
         Model: ExtensionSuggestion
         Used By: Partner
     */

    class ExtensionSuggestion: Codable {
        public var listingInfo: ListingInfo?

        public var organization: OrganizationBasicInfo?

        public var organizationId: String?

        public var plans: [Plan]?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case listingInfo = "listing_info"

            case organization

            case organizationId = "organization_id"

            case plans

            case slug
        }

        public init(listingInfo: ListingInfo? = nil, organization: OrganizationBasicInfo? = nil, organizationId: String? = nil, plans: [Plan]? = nil, slug: String? = nil) {
            self.listingInfo = listingInfo

            self.organization = organization

            self.organizationId = organizationId

            self.plans = plans

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                listingInfo = try container.decode(ListingInfo.self, forKey: .listingInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                organization = try container.decode(OrganizationBasicInfo.self, forKey: .organization)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                organizationId = try container.decode(String.self, forKey: .organizationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                plans = try container.decode([Plan].self, forKey: .plans)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listingInfo, forKey: .listingInfo)

            try? container.encodeIfPresent(organization, forKey: .organization)

            try? container.encodeIfPresent(organizationId, forKey: .organizationId)

            try? container.encodeIfPresent(plans, forKey: .plans)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

public extension PlatformClient.ApplicationClient.Partner {
    /*
         Model: ExtensionSuggestion
         Used By: Partner
     */

    class ExtensionSuggestion: Codable {
        public var listingInfo: ListingInfo?

        public var organization: OrganizationBasicInfo?

        public var organizationId: String?

        public var plans: [Plan]?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case listingInfo = "listing_info"

            case organization

            case organizationId = "organization_id"

            case plans

            case slug
        }

        public init(listingInfo: ListingInfo? = nil, organization: OrganizationBasicInfo? = nil, organizationId: String? = nil, plans: [Plan]? = nil, slug: String? = nil) {
            self.listingInfo = listingInfo

            self.organization = organization

            self.organizationId = organizationId

            self.plans = plans

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                listingInfo = try container.decode(ListingInfo.self, forKey: .listingInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                organization = try container.decode(OrganizationBasicInfo.self, forKey: .organization)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                organizationId = try container.decode(String.self, forKey: .organizationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                plans = try container.decode([Plan].self, forKey: .plans)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listingInfo, forKey: .listingInfo)

            try? container.encodeIfPresent(organization, forKey: .organization)

            try? container.encodeIfPresent(organizationId, forKey: .organizationId)

            try? container.encodeIfPresent(plans, forKey: .plans)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
