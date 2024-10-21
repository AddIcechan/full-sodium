import Testing
@testable import full_sodium
@testable import Clibsodium



@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    crypto_onetimeauth_poly1305(1, 2, 3, 5)
}
