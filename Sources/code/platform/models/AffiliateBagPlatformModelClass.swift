

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var storeId: Int

        public var deliveryCharge: Double

        public var quantity: Int

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var discount: Double

        public var sku: String

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var itemId: Int

        public var itemSize: String

        public var companyId: Int

        public var id: String

        public var fyndStoreId: String

        public var avlQty: Int

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case quantity

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case discount

            case sku

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case itemSize = "item_size"

            case companyId = "company_id"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case identifier

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.discount = discount

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.itemSize = itemSize

            self.companyId = companyId

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
