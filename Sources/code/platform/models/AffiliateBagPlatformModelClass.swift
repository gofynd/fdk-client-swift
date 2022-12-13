

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var avlQty: Int

        public var quantity: Int

        public var companyId: Int

        public var hsnCodeId: String

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var sku: String

        public var unitPrice: Double

        public var discount: Double

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var identifier: [String: Any]

        public var itemId: Int

        public var itemSize: String

        public var priceEffective: Double

        public var amountPaid: Double

        public var fyndStoreId: String

        public var id: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case quantity

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case sku

            case unitPrice = "unit_price"

            case discount

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case identifier

            case itemId = "item_id"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.quantity = quantity

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.unitPrice = unitPrice

            self.discount = discount

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.identifier = identifier

            self.itemId = itemId

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
