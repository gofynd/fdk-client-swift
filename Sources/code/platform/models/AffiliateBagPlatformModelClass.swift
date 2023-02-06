

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var avlQty: Int

        public var identifier: [String: Any]

        public var sku: String

        public var discount: Double

        public var fyndStoreId: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var itemSize: String

        public var hsnCodeId: String

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var priceMarked: Double

        public var quantity: Int

        public var transferPrice: Int

        public var unitPrice: Double

        public var id: String

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case avlQty = "avl_qty"

            case identifier

            case sku

            case discount

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case quantity

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.avlQty = avlQty

            self.identifier = identifier

            self.sku = sku

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.id = id

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
