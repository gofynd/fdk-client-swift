

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var sku: String

        public var itemSize: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var discount: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var transferPrice: Int

        public var priceEffective: Double

        public var id: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var itemId: Int

        public var hsnCodeId: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case sku

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case discount

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.sku = sku

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
