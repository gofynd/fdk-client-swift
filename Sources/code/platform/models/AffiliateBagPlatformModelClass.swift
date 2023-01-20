

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var avlQty: Int

        public var companyId: Int

        public var id: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var storeId: Int

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var hsnCodeId: String

        public var quantity: Int

        public var identifier: [String: Any]

        public var itemId: Int

        public var priceMarked: Double

        public var discount: Double

        public var fyndStoreId: String

        public var itemSize: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case id = "_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case sku

            case hsnCodeId = "hsn_code_id"

            case quantity

            case identifier

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case discount

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.companyId = companyId

            self.id = id

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.identifier = identifier

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
