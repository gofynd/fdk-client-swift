

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var unitPrice: Double

        public var modifiedOn: String

        public var itemSize: String

        public var hsnCodeId: String

        public var transferPrice: Int

        public var quantity: Int

        public var storeId: Int

        public var id: String

        public var itemId: Int

        public var priceMarked: Double

        public var discount: Double

        public var sku: String

        public var sellerIdentifier: String

        public var avlQty: Int

        public var companyId: Int

        public var identifier: [String: Any]

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case quantity

            case storeId = "store_id"

            case id = "_id"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case discount

            case sku

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case identifier

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.storeId = storeId

            self.id = id

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.discount = discount

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.companyId = companyId

            self.identifier = identifier

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
