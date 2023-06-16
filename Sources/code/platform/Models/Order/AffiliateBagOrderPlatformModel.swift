

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var id: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var discount: Double

        public var itemSize: String

        public var fyndStoreId: String

        public var storeId: Int

        public var companyId: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case discount

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case identifier

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case sku

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.discount = discount

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var id: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var discount: Double

        public var itemSize: String

        public var fyndStoreId: String

        public var storeId: Int

        public var companyId: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case discount

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case identifier

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case sku

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.discount = discount

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
