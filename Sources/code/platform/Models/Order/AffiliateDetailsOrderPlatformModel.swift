

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var adId: String?

        public var affiliateStoreId: String

        public var affiliateShipmentId: String

        public var affiliateMeta: AffiliateMeta

        public var pdfLinks: PDFLinks?

        public var affiliateOrderId: String

        public var affiliateId: String?

        public var shipmentMeta: ShipmentMeta

        public var companyAffiliateTag: String?

        public var affiliateBagId: String

        public enum CodingKeys: String, CodingKey {
            case adId = "ad_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateId = "affiliate_id"

            case shipmentMeta = "shipment_meta"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateBagId = "affiliate_bag_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.adId = adId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.affiliateOrderId = affiliateOrderId

            self.affiliateId = affiliateId

            self.shipmentMeta = shipmentMeta

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateBagId = affiliateBagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var adId: String?

        public var affiliateStoreId: String

        public var affiliateShipmentId: String

        public var affiliateMeta: AffiliateMeta

        public var pdfLinks: PDFLinks?

        public var affiliateOrderId: String

        public var affiliateId: String?

        public var shipmentMeta: ShipmentMeta

        public var companyAffiliateTag: String?

        public var affiliateBagId: String

        public enum CodingKeys: String, CodingKey {
            case adId = "ad_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateId = "affiliate_id"

            case shipmentMeta = "shipment_meta"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateBagId = "affiliate_bag_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.adId = adId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.affiliateOrderId = affiliateOrderId

            self.affiliateId = affiliateId

            self.shipmentMeta = shipmentMeta

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateBagId = affiliateBagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
        }
    }
}
