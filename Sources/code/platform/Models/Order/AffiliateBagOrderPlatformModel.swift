

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var id: String

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var companyId: Int

        public var modifiedOn: String

        public var itemId: Int

        public var unitPrice: Double

        public var itemSize: String

        public var avlQty: Int

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var quantity: Int

        public var storeId: Int

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case discount

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case sku

            case identifier

            case hsnCodeId = "hsn_code_id"

            case quantity

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var id: String

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var companyId: Int

        public var modifiedOn: String

        public var itemId: Int

        public var unitPrice: Double

        public var itemSize: String

        public var avlQty: Int

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var quantity: Int

        public var storeId: Int

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case discount

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case sku

            case identifier

            case hsnCodeId = "hsn_code_id"

            case quantity

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
