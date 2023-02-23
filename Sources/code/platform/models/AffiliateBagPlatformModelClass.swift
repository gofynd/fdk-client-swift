

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var affiliateStoreId: String

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var sku: String

        public var modifiedOn: String

        public var companyId: Int

        public var discount: Double

        public var priceEffective: Double

        public var transferPrice: Int

        public var itemId: Int

        public var quantity: Int

        public var storeId: Int

        public var priceMarked: Double

        public var fyndStoreId: String

        public var id: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case sku

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case discount

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case quantity

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.discount = discount

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.quantity = quantity

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
