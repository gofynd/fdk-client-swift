

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var affiliateStoreId: String

        public var affiliateShipmentId: String

        public var shipmentMeta: ShipmentMeta

        public var affiliateBagId: String

        public var adId: String?

        public var companyAffiliateTag: String?

        public var affiliateId: String?

        public var pdfLinks: PDFLinks?

        public var affiliateMeta: AffiliateMeta

        public var affiliateOrderId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case shipmentMeta = "shipment_meta"

            case affiliateBagId = "affiliate_bag_id"

            case adId = "ad_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateId = "affiliate_id"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.affiliateStoreId = affiliateStoreId

            self.affiliateShipmentId = affiliateShipmentId

            self.shipmentMeta = shipmentMeta

            self.affiliateBagId = affiliateBagId

            self.adId = adId

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateId = affiliateId

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}
